require 'spec_helper'

describe Message do

  it {should belong_to :sender}
  it {should belong_to :receiver}

  it {should validate_presence_of :sender}
  it {should validate_presence_of :receiver}
  it {should validate_presence_of :content}
end
