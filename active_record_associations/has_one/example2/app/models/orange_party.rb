class OrangeParty < ActiveRecord::Base
	has_one :convention, :as => :conventional
end
