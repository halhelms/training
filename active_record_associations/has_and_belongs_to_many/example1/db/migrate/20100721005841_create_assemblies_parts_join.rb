class CreateAssembliesPartsJoin < ActiveRecord::Migration
  def self.up
  	create_table :assemblies_parts, :id => false do |t|
  		t.integer :assembly_id
  		t.integer :part_id
  	end
  end

  def self.down
  	drop_table :assemblies_parts
  end
end
