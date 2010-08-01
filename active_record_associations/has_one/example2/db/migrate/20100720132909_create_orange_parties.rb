class CreateOrangeParties < ActiveRecord::Migration
  def self.up
    create_table :orange_parties do |t|
      t.string :mission_statement
      t.integer :
      t.timestamps
    end
  end

  def self.down
    drop_table :orange_parties
  end
end
