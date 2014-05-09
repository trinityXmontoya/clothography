class Size < ActiveRecord::Base
  belongs_to :gender
  belongs_to :category
end
