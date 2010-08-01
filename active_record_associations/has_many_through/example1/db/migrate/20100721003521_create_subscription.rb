class CreateSubscription < ActiveRecord::Migration
  def self.up
  	create_table :subscriptions do |t|
  		t.integer :newsletter_id
  		t.integer :subscriber_id
  		t.boolean :confirmed
  	end
  end

  def self.down
  	drop_table :subscriptions
  end
end
