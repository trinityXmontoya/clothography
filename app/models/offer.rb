class Offer < ActiveRecord::Base
  belongs_to :user
  belongs_to :listing

  before_create :mark_as_pending

  def mark_as_pending
    self.update(status: 'pending')
  end

end
