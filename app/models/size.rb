class Size < ActiveRecord::Base
  belongs_to :gender
  belongs_to :category

  has_many :users, through: :size_users

  def self.standard_sizes
    where(name: "Standard")+where(name: "Petite")+where(name: "Plus")
  end

  def self.jean_sizes
    where(name: "Standard-Jeans")+where(name: "Petite")+where(name: "Plus")
  end

  def self.bottom_sizes
    where(name:"Standard-Bottoms")+where(name: "Petite")+where(name: "Plus")
  end

  def self.shoe_sizes
    where(name: "Shoe")
  end

end
