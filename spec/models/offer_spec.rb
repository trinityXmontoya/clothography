require 'spec_helper'

describe Offer do
  it {should belong_to :offerer}
  it {should belong_to :listing}

  it {should validate_presence_of :offerer}
  it {should validate_presence_of :listing}
  it {should validate_presence_of :amount}
end
