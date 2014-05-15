require 'spec_helper'

describe Size do
  it {should belong_to :gender}
  it {should belong_to :category}
end
