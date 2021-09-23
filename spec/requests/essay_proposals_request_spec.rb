require 'rails_helper'

RSpec.describe "EssayProposals", type: :request do
  let(:path) { new_essay_proposals_path }

  describe "GET /new" do
    shared_examples "require authentication" do
      # let(:request_method) { defined?(:request_method) ? request_method : :get }
      # TODO: how to not 
      def do_authentication_request
        # send(request_method.try(:itself, :get), path)
        send(defined?(request_method) ? request_method : :get, path)
      end

      it "require authentication" do
        do_authentication_request
        expect(response).to redirect_to(new_user_session_path)

        sign_in create(:user)
        do_authentication_request
        expect(response).to have_http_status(:ok)
      end
    end

    shared_examples "require authorization" do |user_type|
      include_examples "require authentication"

      it "require authorization as #{user_type}" do
        sign_in create(:user, user_type: user_type)

        do_authentication_request
        expect(response).not_to have_http_status(:forbidden)

        # sign_in create(:user, user_type: user_type)

        # get path
        # expect(response).not_to have_http_status(:forbidden)
      end
    end

    include_examples "require authorization", :mahasiswa

    context "not submitted" do
      pending "add new essay proposal data"
    end

    context "already submitted" do
      pending "update data"
    end
  end
end
