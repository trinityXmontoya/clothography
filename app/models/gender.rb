class Gender < ActiveRecord::Base
  has_many :users
  has_many :listings
  has_many :sizes
  has_many :categories
end
