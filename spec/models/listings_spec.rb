require 'rails_helper'

describe Listing do
  it { should validate_presence_of :title}
  it { should validate_presence_of :description}
  it { should validate_presence_of :location}
  it { should validate_presence_of :rate}

  it { should have_many :images }
  it { should belong_to :user}
  it { should have_many :reservations }

  it { should have_many :reviews}
end
