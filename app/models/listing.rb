class Listing < ActiveRecord::Base
  belongs_to :user
  belongs_to :brand
  belongs_to :category
  belongs_to :size
  belongs_to :gender
  has_many :tags, foreign_key: 'listing_id', table_name: 'listing_tags'
  has_attached_file :photo,
    path: "/users/:class/:username/:attachment/:id/:filename",
    styles: { large: "700x400#", medium: "490x368#",  thumbnail: "75x75#" },
    convert_options: { all: "-auto-orient" }

  validates_attachment :photo,
  presence: true,
  content_type: {
    content_type:  /^image\/(png|jpeg)/ },
  size: { in: 0..100.kilobytes }
  validates :user_id, :brand_id, :category_id, :size_id, :gender_id, :title, :description, :price, :condition, presence: true
  validates :price, :original_price, numericality: { only_integer: true }

  def self.conditions
    return ["New with tags", "New without tags", "Like new", "Gently used"]
  end

  validates :condition, inclusion: { in: self.conditions}


end
