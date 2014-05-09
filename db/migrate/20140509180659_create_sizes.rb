class CreateSizes < ActiveRecord::Migration
  def change
    create_table :sizes do |t|
      t.references :gender, index: true
      t.references :category, index: true
      t.string :type
      t.string :us_number
      t.string :waist
      t.string :basic_name
    end
  end
end
