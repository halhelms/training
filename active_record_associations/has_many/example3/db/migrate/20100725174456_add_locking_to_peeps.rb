class AddLockingToPeeps < ActiveRecord::Migration
  def self.up
    add_column :people, :lock_version, :integer, :default => 0
    Person.all.each do |p|
      p.lock_version =  0
      p.save
    end
  end

  def self.down
    remove_column :people, :lock_version
  end
end
