class Subscription < ActiveRecord::Base
	belongs_to :newsletter
	belongs_to :subscriber
end
