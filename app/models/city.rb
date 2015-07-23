class City < ActiveRecord::Base
  belongs_to :user

  validates :name, :presence => true
  validates :state, :presence => true
  validates :country, :presence => true
end
