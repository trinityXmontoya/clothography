class Offer < ActiveRecord::Base
  belongs_to :offerer, foreign_key: 'offerer_id', class_name: "User"
  belongs_to :listing

  before_create :mark_as_pending

  validates :offerer_id, :listing_id, :amount, presence: true
  def mark_as_pending
    self.update(status: 'pending')
  end

end
