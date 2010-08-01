class Newsletter < ActiveRecord::Base
	has_many :subscribers, :conditions => "confirmed = 1"
	#has_many :subscribers
end
