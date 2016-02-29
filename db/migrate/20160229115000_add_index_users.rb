class AddIndexUsers < ActiveRecord::Migration
  def change
    add_index :users, :facebook_uuid, :unique => true
  end
end
