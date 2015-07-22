class City < ActiveRecord::Base
  validates :name, :presence => true
  validates :state, :presence => true
  validates :country, :presence => true 
end
