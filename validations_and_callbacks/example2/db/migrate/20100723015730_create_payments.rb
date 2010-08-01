class CreatePayments < ActiveRecord::Migration
  def self.up
    create_table :payments do |t|
      t.date :date_paid
      t.decimal :amount
      t.string :type

      t.timestamps
    end
  end

  def self.down
    drop_table :payments
  end
end
