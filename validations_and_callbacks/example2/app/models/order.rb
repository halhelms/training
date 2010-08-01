class Order < ActiveRecord::Base
  #total_amount :decimal
  belongs_to :customer
  has_many :payments
  
  def make_payment(payment)
    self.payments << payment
    check_for_paid_in_full
  end
  
  def check_for_paid_in_full
    amount_paid = 0
    self.payments do |p|
      amount_paid += p.amount
    end
    notify :paid_in_full if amount_paid >= self.total_amount
  end
end
