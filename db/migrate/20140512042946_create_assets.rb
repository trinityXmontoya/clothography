class CreateAssets < ActiveRecord::Migration
  def change
    create_table :assets do |t|
      t.references :listing
      t.timestamps
    end
  end
end
