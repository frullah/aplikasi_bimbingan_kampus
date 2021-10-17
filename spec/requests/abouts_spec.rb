require 'rails_helper'

RSpec.describe "Abouts", type: :request do
  describe "GET /show" do
    fit "require authorization", aggregate_failures: true do
      get "/about"
      expect(response).to redirect_to(new_user_session_path)

      sign_in create(:user)
      get "/about"
      expect(response).to have_http_status(:ok)
    end
  end
end
