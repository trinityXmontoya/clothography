require 'spec_helper'

describe "Listings" do
  describe "GET /listings" do
    it "works! (now write some real specs)" do
      get listings_path
      expect(response.status).to be(200)
    end
  end
end
