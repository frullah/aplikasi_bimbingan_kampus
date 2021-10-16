require "rails_helper"

RSpec.describe User, type: :model do
  let(:user) { build(:user) }

  shared_examples "user model" do
    describe "validations" do
      context "presences" do
        it { is_expected.to validate_presence_of(:username) }
      end

      context "max length" do
        it { is_expected.to validate_length_of(:phone_number).is_at_most(16) }
      end

      context "uniqueness" do
        it { expect(user).to validate_uniqueness_of(:username) }
        it {
          expect(user).to validate_uniqueness_of(:id_number)
            .scoped_to(:user_type)
        }
      end
    end

    describe "#type" do
      it {
        is_expected.to define_enum_for(:user_type)
          .with_values([:administrator, :dosen, :mahasiswa])
      }
    end
  end
end
