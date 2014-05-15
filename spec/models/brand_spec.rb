require 'spec_helper'

describe Brand do

  it {should have_many :listings}
  it {should validate_presence_of :name}
  
end
