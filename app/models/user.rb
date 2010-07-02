class User < ActiveRecord::Base
  has_many :notes
  has_many :appointments
  has_many :to_dos
  
  acts_as_authentic
  
  def deliver_password_reset_instructions!
    reset_perishable_token!
    Notifier.deliver_password_reset_instructions(self)
  end
end