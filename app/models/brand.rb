class Brand < ActiveRecord::Base
  has_many :listings

  validates :name, presence: true

  before_create :capitalize

  def capitalize
    self.word.capitalize!
  end
end
