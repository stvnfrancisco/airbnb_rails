require 'rails_helper'

describe User do
  it { should validate_presence_of :username}
  it { should validate_uniqueness_of :username}
  it { should validate_presence_of :name }

  it { should have_many :images }
  it { should have_many :listings}
  it { should have_many :reservations }
  it { should have_many :reviews}
end
