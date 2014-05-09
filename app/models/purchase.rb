class Purchase < ActiveRecord::Base

  belongs_to :seller, foreign_key: 'seller_id', class_name: "User"
  belong_to :buyer, foreign_key: 'buyer_id', class_name: "User" 

end
