class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.integer :origin_id
      t.string :origin_url, limit: 191
      t.string :title, null: false, limit: 191
      t.text :description
      t.string :image, null: false, limit: 191
      t.column :crawl_status, :tinyint, default: 0, null: false

      t.timestamps
    end
    add_index :posts, :origin_id, unique: true
    add_index :posts, :crawl_status
  end
end
