class CyanParty < ActiveRecord::Base
	has_one :convention, :as => :conventional
end
