class FixDate < ActiveRecord::Migration
    def self.up
      change_table :members do |t|
        t.change :date_of_birth, :date
      end
    end

  def self.down
  end
end
