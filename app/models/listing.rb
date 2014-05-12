class Listing < ActiveRecord::Base
  belongs_to :user
  belongs_to :brand
  belongs_to :category
  belongs_to :size
  belongs_to :gender

  has_many :tags, through: :listing_tags, foreign_key: 'listing_id'


  has_attached_file :photo,
    :path => ":rails_root/assets/:class/:user_id/:attachment/:id/:filename",
    :styles => { :large => "700x400#", :medium=>"490x368#", :thumbnail=>"75x75#" },
    :storage => :s3,
    :s3_credentials => Proc.new{|a| a.instance.s3_credentials }
  #   # :convert_options => { :all => "-auto-orient" }
  #
  # # VALIDATIONS
  validates_attachment :photo,
  :presence => true,
  :content_type => {
    :content_type =>  /^image\/(png|gif|jpeg)/ },
  :size => { :in => 0..100.kilobytes }

  validates :brand_id, :user_id, presence: true
  #
  def s3_credentials
    {:bucket => "#{ENV['S3_BUCKET_NAME']}",:access_key_id =>  "#{ENV['AWS_ACCESS_KEY_ID']}", :secret_access_key =>  "#{ENV['AWS_SECRET_ACCESS_KEY']}" }
  end

  def self.copy_and_delete(paperclip_file_path, raw_source)
      s3 = AWS::S3.new #create new s3 object
      destination = s3.buckets[ENV['S3_BUCKET_NAME']].objects[paperclip_file_path]
      sub_source = CGI.unescape(raw_source)
      sub_source.slice!(0) # the attached_file_file_path ends up adding an extra "/" in the beginning. We've removed this.
      source = s3.buckets[ENV['S3_BUCKET_NAME']].objects["#{sub_source}"]
      source.copy_to(destination) #copy_to is a method originating from the aws-sdk gem.
      source.delete #delete temp file.
   end

end
