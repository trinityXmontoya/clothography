require 'spec_helper'

describe Gender do
  it {should have_many :listings}
  it {should have_many :sizes}
  it {should have_many :categories}
end
