require 'spec_helper'

describe Purchase do
  it {should belong_to :seller}
  it {should belong_to :buyer}
  it {should belong_to :listing}

  it {should validate_uniqueness_of :listing_id}

  it {should validate_presence_of :seller}
  it {should validate_presence_of :buyer}
  it {should validate_presence_of :listing}
end
