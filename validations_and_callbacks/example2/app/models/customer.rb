class Customer < ActiveRecord::Base
  has_one :address
  has_many :orders
end
