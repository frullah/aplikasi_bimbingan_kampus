require 'rails_helper'

RSpec.describe "EssayProposals", type: :request do
  describe "GET /new" do
    let(:path) { new_essay_proposals_path }

    it "require authentication" do
      get path
      expect(response).to redirect_to(new_user_session_path)

      sign_in create(:user)
      get path
      expect(response).to have_http_status(:ok)
    end

    context "not submitted" do
      pending "add new essay proposal data"
    end

    context "already submitted" do
      pending "update data"
    end
  end
end
