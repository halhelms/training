class CreateFriendships < ActiveRecord::Migration
  def self.up
    create_table :friendships, :id => false do |t|
      t.integer :person_id
      t.integer :friend_id
    end
  end

  def self.down
    drop_table :friendships
  end
end
