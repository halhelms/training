class CreateCyanParties < ActiveRecord::Migration
  def self.up
    create_table :cyan_parties do |t|
      t.string :mission_statement
      t.references :conventional
      t.timestamps
    end
  end

  def self.down
    drop_table :cyan_parties
  end
end
