class Member < ActiveRecord::Base
	#name :string
	#email :string
	#date_of_birth :date
	#tac_agreed :boolean
	
	validates_uniqueness_of :email, :case_sensitive => false
	validate :member_must_not_be_minor

	validate :tac_must_be_agreed_to
	
	before_save :email_must_be_valid
	
	def member_must_not_be_minor
		age_in_years = ((Date.today - date_of_birth) / 365).floor
		errors.add(:date_of_birth, "Members must be at least 18 years of age") if age_in_years < 18
	end
	
	def tac_must_be_agreed_to
	  errors.add(:tac_agreed, "You must agree to the terms and conditions") if !tac_agreed
	end
	
	def email_must_be_valid 
	  reg = /[A-Za-z0-9.]*@[A-Za-z0-9.]*/ 
    reg.match(email)
	end
end
