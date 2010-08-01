class Newsletter < ActiveRecord::Base
	has_many :subscriptions
	has_many :subscribers, :through => :subscriptions
end
