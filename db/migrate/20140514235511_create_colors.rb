class CreateColors < ActiveRecord::Migration
  def change
    create_table :colors do |t|
      t.string :name
      t.string :thumbnail

      t.timestamps
    end
  end
end
