class CreateCharacters < ActiveRecord::Migration
  def self.up
    create_table :characters do |t|
      t.string :name
      t.string :real_name
      t.string :gender, :limit => 1
      t.string :alignment, :limit => 4 # good, evil, or both
      t.integer :energy_projection, :range => 1..7
      t.integer :strength, :range => 1..7
      t.integer :durability, :range => 1..7
      t.integer :fighting_skill, :range => 1..7
      t.integer :intelligence, :range => 1..7
      t.integer :speed, :range => 1..7

      t.timestamps
    end
  end

  def self.down
    drop_table :characters
  end
end
