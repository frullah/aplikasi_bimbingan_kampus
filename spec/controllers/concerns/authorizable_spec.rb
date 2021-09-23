require "rails_helper"

RSpec.describe "Authorizable" do
  let(:klass) {
    Class.new do
      extend Authorizable

      def self.head(status)
      end

      def self.current_user
      end
    end
  }

  describe "authorize" do
    context "user type is not same" do
      it "does not response :forbidden" do
        allow(klass).to receive_message_chain(:current_user, :user_type).and_return(:mahasiswa)
        allow(klass).to receive(:head).with(:forbidden)
        klass.authorize! :administrator
        expect(klass).to have_received(:head).with(:forbidden)
      end
    end

    context "user type is same" do
      it "does not response :forbidden" do
        allow(klass).to receive_message_chain(:current_user, :user_type).and_return(:administrator)
        allow(klass).to receive(:head)
        klass.authorize! :administrator
        expect(klass).not_to have_received(:head)
      end
    end
  end

  describe "authorize_administrator!" do
    context "user type is not :administrator" do
      it "does not response :forbidden" do
        allow(klass).to receive_message_chain(:current_user, :user_type).and_return(:mahasiswa)
        allow(klass).to receive(:head).with(:forbidden)
        klass.authorize_administrator!
        expect(klass).to have_received(:head).with(:forbidden)
      end
    end

    context "user type is administrator" do
      it "does not response :forbidden" do
        allow(klass).to receive_message_chain(:current_user, :user_type).and_return(:administrator)
        allow(klass).to receive(:head)
        klass.authorize_administrator!
        expect(klass).not_to have_received(:head)
      end
    end
  end

  describe "authorize_mahasiswa!" do
    context "user type is not :mahasiswa" do
      it "does not response :forbidden" do
        allow(klass).to receive_message_chain(:current_user, :user_type).and_return(:administrator)
        allow(klass).to receive(:head).with(:forbidden)
        klass.authorize_mahasiswa!
        expect(klass).to have_received(:head).with(:forbidden)
      end
    end

    context "user type is mahasiswa" do
      it "does not response :forbidden" do
        allow(klass).to receive_message_chain(:current_user, :user_type).and_return(:mahasiswa)
        allow(klass).to receive(:head)
        klass.authorize_mahasiswa!
        expect(klass).not_to have_received(:head)
      end
    end
  end
end
