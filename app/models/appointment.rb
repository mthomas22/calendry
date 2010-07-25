class Appointment < Listing
  belongs_to :user
  
  validates_presence_of :start_time
  validates_presence_of :end_time
  validates_presence_of :description
end
