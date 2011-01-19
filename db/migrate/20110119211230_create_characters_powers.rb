class CreateCharactersPowers < ActiveRecord::Migration
  def self.up
    create_table :characters_powers, :force => true, :id => false do |t|
      t.integer :character_id, :null => false
	    t.integer :power_id, :null => false
    end
  end
  
  def self.down
    drop_table :characters_powers
  end
end
