class Project < ActiveRecord::Base
  CATEGORIES = ["Clean Technology", "Healthcare", "Microfinance", "Education", "Infrastructure", "Environment"]
  extend FriendlyId
  friendly_id :name, use: :slugged
  

end
