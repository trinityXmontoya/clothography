class AddStatusAndOffererIdToOffers < ActiveRecord::Migration
  def change
    change_table :offers do |t|
      t.integer :amount
      t.integer :offerer_id
    end
  end
end
