class Listing < ActiveRecord::Base
  belongs_to :user
  belongs_to :brand
  belongs_to :category
  belongs_to :size
  belongs_to :gender

  has_many :tags, through: :listing_tags, foreign_key: 'listing_id'


  has_attached_file :photo,
    path: "/users/:class/:username/:attachment/:id/:filename",
    styles: { large: "700x400#", medium: "490x368#",  thumbnail: "75x75#" },
    convert_options: { all: "-auto-orient" }

  # # VALIDATIONS
  validates_attachment :photo,
  presence: true,
  content_type: {
    content_type:  /^image\/(png|jpeg)/ },
  size: { in: 0..100.kilobytes }

  validates :user_id, :brand_id, :category_id, :size_id, :gender_id, :title, :description, :original_price, :price, :condition, presence: true

end
