require 'rails_helper'

RSpec.describe "Fish", :type => :request do
  describe "GET /fish" do
    it "works! (now write some real specs)" do
      get fish_index_path
      expect(response.status).to be(200)
    end
  end
end
