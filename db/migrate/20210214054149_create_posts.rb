class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.references :user, foreign_key: true
      t.string :title
      t.string :url
      t.string :address
      t.string :weekday_open_time
      t.string :holiday_open_time
      t.string :description
      t.integer :is_counter_exist
      t.integer :is_private_room_exist
      t.float :oshare_value
      t.string :image
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
