class CreateMagazines < ActiveRecord::Migration
  def self.up
    create_table :magazines do |t|
      t.string :name
      t.integer :issue_no
      t.integer :year

      t.timestamps
    end
  end

  def self.down
    drop_table :magazines
  end
end
