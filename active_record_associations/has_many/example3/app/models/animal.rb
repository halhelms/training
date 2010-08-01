class Animal < ActiveRecord::Base
  belongs_to :owner, :class_name => "Person", :foreign_key => "person_id"
end
