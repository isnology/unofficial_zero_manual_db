require 'rails_helper'

RSpec.describe "Fasteners", type: :request do
  describe "GET /fasteners" do
    it "works! (now write some real specs)" do
      get fasteners_path
      expect(response).to have_http_status(200)
    end
  end
end
