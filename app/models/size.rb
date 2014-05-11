class Size < ActiveRecord::Base
  belongs_to :gender
  belongs_to :category

  has_many :users, through: :size_users

  def self.retrieve_standard_sizes
    where("name = ?","Standard") + where("name = ?","Petite") + where("name = ?","Plus")
  end

  def self.retrieve_jean_sizes
    where("name = ?","Standard-Jeans") + where("name = ?","Petite") + where("name = ?","Plus")
  end

  def self.retrieve_bottom_sizes
    where("name = ?","Standard-Bottoms") + where("name = ?","Petite") + where("name = ?","Plus")
  end

end
