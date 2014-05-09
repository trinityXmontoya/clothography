class Tag < ActiveRecord::Base
  has_many :listings, through: :listing_tags, foreign_key: 'tag_id'
end
