require 'rails_helper'

RSpec.describe "StudentKkpGuidances", type: :request do
  describe "GET /edit" do
    it "returns http success" do
      get "/student_kkp_guidances/edit"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /update" do
    it "returns http success" do
      get "/student_kkp_guidances/update"
      expect(response).to have_http_status(:success)
    end
  end

end
