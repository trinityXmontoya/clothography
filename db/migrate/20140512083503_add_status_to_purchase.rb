class AddStatusToPurchase < ActiveRecord::Migration
  def change
    change_table :purchases do |t|
    t.string :status
  end
  end
end
