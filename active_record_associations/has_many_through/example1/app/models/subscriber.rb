class Subscriber < ActiveRecord::Base
	has_many :subscriptions
	has_many :newsletters, :through => :subscriptions
end
