class CreateIcecreams < ActiveRecord::Migration
  def self.up
    create_table :icecreams do |t|
      t.string :flavor
			t.references :icecreamfactory
      t.timestamps
    end
  end

  def self.down
    drop_table :icecreams
  end
end
