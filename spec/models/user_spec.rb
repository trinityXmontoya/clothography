
require 'spec_helper'

describe User do
  it {should have_many :listings}
  it {should have_many :sizes}
  it {should have_many :proposed_offers}
  it {should have_many :followings}
  it {should have_many :followers}
  it {should have_many :received_messages}
  it {should have_many :sent_messages}
  it {should have_many :purchases}
  it {should have_many :sales}
  it {should validate_presence_of :username}
  it {should validate_presence_of :email}
end
