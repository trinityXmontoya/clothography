class AddDefaultValueFalseToMessagesViewedColumn < ActiveRecord::Migration
  def change
    change_column :messages, :viewed, :boolean, :default => false
  end
end
