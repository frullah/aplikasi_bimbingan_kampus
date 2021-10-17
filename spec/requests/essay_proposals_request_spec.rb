require "rails_helper"

# spec - pendaftaran skripsi
RSpec.describe "EssayProposals", type: :request do
  let(:path) { new_essay_proposals_path }

  describe "GET /new" do
    shared_examples "require authentication" do
      # let(:request_method) { defined?(:request_method) ? request_method : :get }
      # TODO: review about this method usage. should i use let(:request_method) (shadowing let) ?
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

    shared_examples "require authorization" do |expected_user_type|
      include_examples "require authentication"

      it "require authorization as #{expected_user_type}" do
        sign_in create(:user, user_type: expected_user_type)

        do_authentication_request
        expect(response).not_to have_http_status(:forbidden)

        # TODO: fix "Validation failed: Id number has already been taken"
        # User.user_types.each_key do |user_type|
        #   next if expected_user_type == user_type
        #   sign_in create(:user, user_type: expected_user_type)
        #   do_authentication_request
        #   expect(response).to have_http_status(:forbidden)
        # end
      end
    end

    include_examples "require authorization", :mahasiswa

    context "not registered" do
      it "can register"
    end

    context "declined" do
      it "can update data"
    end

    context "approved" do
      it "can only see data"
    end
  end
end
