class Category < ActiveRecord::Base
  belongs_to :gender
  has_many :listings
  scope :womens, -> {where(gender_id: 1)}
  scope :mens, -> {where(gender_id: 2)}

end
