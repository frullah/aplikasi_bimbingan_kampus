require "rails_helper"

RSpec.describe Administrator, type: :model do
  let(:administrator) { build(:administrator) }

  describe "validations" do
    context "presences" do
      it { is_expected.to validate_presence_of(:username) }
    end

    context "max length" do
      it { is_expected.to validate_length_of(:phone_number).is_at_most(16) }
    end

    context "uniqueness" do
      it { expect(administrator).to validate_uniqueness_of(:username) }
      it {
        expect(administrator).to validate_uniqueness_of(:id_number)
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

  # Administrator spec

  describe "#user_type" do
    it "should return :administrator" do
      expect(administrator.user_type).to eq("administrator")
    end
  end
end
