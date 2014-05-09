class Category < ActiveRecord::Base
  belongs_to :gender
  has_many :listings
end
