class CreateSizes < ActiveRecord::Migration
  def change
    create_table :sizes do |t|
      t.references :gender, index: true
      t.references :category, index: true
      t.string :label
      t.string :name
    end
  end
end
