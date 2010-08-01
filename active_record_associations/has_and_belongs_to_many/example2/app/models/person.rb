class Person < ActiveRecord::Base
  has_and_belongs_to_many :friends, 
    :class_name => "Person", 
    :join_table => "friendships", 
    :association_foreign_key => :person_id, 
    :foreign_key => :friend_id
end
