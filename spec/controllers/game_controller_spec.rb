require 'rails_helper'

RSpec.describe GameController, type: :controller do

  describe "GET /" do
    it "should route to game#index" do
      expect(
        get: root_url(subdomain: nil)).to route_to(
        controller: "game",
        action: "index"
      )
    end
    it "should be a success" do
      expect(response).to be_success
    end
    it "should return a 200" do
      expect(response.status).to eq(200)
    end
  end
end
