require 'spec_helper'
require "paperclip/matchers"

RSpec.configure do |config|
  config.include Paperclip::Shoulda::Matchers
end


describe Listing do

    it {should belong_to :user }
    it {should belong_to :brand }
    it {should belong_to :category }
    it {should belong_to :size }
    it {should belong_to :gender }
    it {should belong_to :color }
    it {should have_one :purchase}
    it {should have_one :asset}
    it {should accept_nested_attributes_for :asset}
    it {should have_many :offers}
    it {should have_attached_file :photo1 }

    it { should validate_presence_of :user_id }
    it { should validate_presence_of :brand_id }
    it { should validate_presence_of :category_id }
    it { should validate_presence_of :size_id }
    it { should validate_presence_of :gender_id }
    it { should validate_presence_of :title }
    it { should validate_presence_of :description }
    it { should validate_presence_of :price }
    it { should validate_presence_of :condition }

    it { should ensure_inclusion_of(:condition).in_array(%w(New with tags, New without tags, Like new, Gently used)) }

    it{ should validate_numericality_of(:price).only_integer }
    it{ should validate_numericality_of(:original_price).only_integer }

end
