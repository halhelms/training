class CreateAnimalPerson < ActiveRecord::Migration
  def self.up
    change_table :animals do |t|
      t.integer :person_id
    end
  end

  def self.down
    change_table :animals do |t|
      drop_column :person_id
    end
  end
end
