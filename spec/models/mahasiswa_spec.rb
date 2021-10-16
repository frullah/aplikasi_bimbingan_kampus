require "rails_helper"

RSpec.describe Mahasiswa, type: :model do
  let(:mahasiswa) { build(:mahasiswa) }

  describe "validations" do
    context "presences" do
      it { is_expected.to validate_presence_of(:username) }
    end

    context "max length" do
      it { is_expected.to validate_length_of(:phone_number).is_at_most(16) }
    end

    context "uniqueness" do
      it { expect(mahasiswa).to validate_uniqueness_of(:username) }
      it {
        expect(mahasiswa).to validate_uniqueness_of(:id_number)
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

  # Mahasiswa spec

  describe "#user_type" do
    it "should return :mahasiswa" do
      expect(mahasiswa.user_type).to eq("mahasiswa")
    end
  end
end
