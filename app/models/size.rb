class Size < ActiveRecord::Base
  belongs_to :gender
  belongs_to :category

  has_many :users, through: :size_users
end
