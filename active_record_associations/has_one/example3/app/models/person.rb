class Person < ActiveRecord::Base
	has_one :spouse, :class_name => "Person", :foreign_key => "spouse_id"
end
