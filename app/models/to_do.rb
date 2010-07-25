class ToDo < Listing
  belongs_to :user
  
  validates_presence_of :list
end
