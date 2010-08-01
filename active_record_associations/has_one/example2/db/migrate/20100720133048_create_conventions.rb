class CreateConventions < ActiveRecord::Migration
  def self.up
    create_table :conventions do |t|
      t.integer :year
      t.string :theme
      t.string :city
			t.references :conventional, :polymorphic => true
      t.timestamps
    end
  end

  def self.down
    drop_table :conventions
  end
end
