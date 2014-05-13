class CreateOffers < ActiveRecord::Migration
  def change
    create_table :offers do |t|
      t.integer :offerer_id
      t.references :listing, index: true
      t.string :status
      t.integer :amount

      t.timestamps
    end
  end
end
