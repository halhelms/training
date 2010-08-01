class CreateIcecreamfactories < ActiveRecord::Migration
  def self.up
    create_table :icecreamfactories do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :icecreamfactories
  end
end
