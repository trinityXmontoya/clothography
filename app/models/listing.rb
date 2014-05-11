class Listing < ActiveRecord::Base
  belongs_to :user
  belongs_to :brand
  belongs_to :category
  belongs_to :size
  belongs_to :gender

  has_many :tags, through: :listing_tags, foreign_key: 'listing_id'


  has_attached_file :photo,
  :styles => { :thumbnail => "100x100>" },
  :storage => :s3,
  :s3_credentials => Proc.new{|a| a.instance.s3_credentials },
  :bucket => ENV['S3_BUCKET_NAME'],
  :convert_options => { :all => "-auto-orient" }

  def s3_credentials
    {:bucket => ENV['S3_BUCKET_NAME'], :access_key_id => ENV['AWS_ACCESS_KEY_ID'], :secret_access_key => ENV['AWS_SECRET_ACCESS_KEY']}
  end

  # VALIDATIONS
  validates_attachment :photo,
  :presence => true,
  :content_type => {
    :content_type => ["image/jpeg","image/jpg", "image/gif", "image/png"] },
  :size => { :in => 0..10.kilobytes }
  
end
