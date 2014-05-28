class Category < ActiveRecord::Base
  belongs_to :gender
  has_many :listings

  def self.womens
    where(gender_id: 1)
  end

  def self.mens
    where(gender_id: 2)
  end
end
