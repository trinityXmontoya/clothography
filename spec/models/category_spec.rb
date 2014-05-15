require 'spec_helper'

describe Category do
  it {should have_many :listings}
  it {should belong_to :gender}
end
