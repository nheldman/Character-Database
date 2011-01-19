class CreateImages < ActiveRecord::Migration
  def self.up
    create_table :images do |t|
      t.string :image_file_name
      t.string :image_content_type
      t.integer :image_file_size
      t.integer :character_id

      t.timestamps
    end
    add_index :images, :character_id
  end

  def self.down
    drop_table :images
  end
end
