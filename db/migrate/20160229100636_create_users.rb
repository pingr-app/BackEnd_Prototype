class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :facebook_uuid
      t.integer :x_coord
      t.integer :y_coord
      t.timestamps null: false
    end
  end
end
