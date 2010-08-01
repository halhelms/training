class Convention < ActiveRecord::Base
	belongs_to :conventional, :polymorphic => true
end
