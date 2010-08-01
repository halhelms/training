ActiveRecord::Base.class_eval do
    def self.validates_as_true(attr_name)
       errors.add(:attr_name, "must be true") if !attr_name
    end
end