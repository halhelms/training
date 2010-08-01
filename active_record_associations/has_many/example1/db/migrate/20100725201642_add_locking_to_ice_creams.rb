class AddLockingToIceCreams < ActiveRecord::Migration
  def self.up
    add_column :icecreams, :lock_version, :integer, :default => 0
    Icecream.all.each do |i|
      i.lock_version = 0
      i.save
    end
  end

  def self.down
    remove_column :icecreams, :lock_version
  end
end
