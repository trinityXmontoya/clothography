class Size < ActiveRecord::Base
  belongs_to :gender
  belongs_to :category

  has_many :users, through: :size_users

  scope :standard, -> { where(name: "Standard", name: "Petite", name: "Plus")}
  scope :jeans, -> { where(name: "Standard-Jeans", name: "Petite", name: "Plus")}
  scope :bottoms, -> { where(name: "Standard-Bottoms", name: "Petite", name: "Plus")}
  scope :shoes, -> { where(name: "Shoe")}

end
