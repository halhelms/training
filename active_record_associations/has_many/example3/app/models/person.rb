class Person < ActiveRecord::Base
  has_many :pets, :class_name => "Animal"
end
