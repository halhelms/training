class AddMagazineToAds < ActiveRecord::Migration
  def self.up
    add_column :ads, :magazine_id, :integer
  end

  def self.down
    remove_column :ads, :magazine_id
  end
end
