class AddLoginLinkSentColumnToUsers < ActiveRecord::Migration
  def change
    add_column :users, :login_link_sent, :datetime
  end
end
