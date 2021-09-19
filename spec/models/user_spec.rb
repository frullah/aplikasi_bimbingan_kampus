require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { build(:user) }

  describe "validations" do
    context "presences" do
      it { is_expected.to validate_presence_of(:username) }
      it { is_expected.to validate_presence_of(:id_number) }
    end

    context "uniqueness" do
      it { expect(user).to validate_uniqueness_of(:username) }
    end
  end

  describe "#tyoe" do
    it {
      is_expected.to define_enum_for(:user_type)
        .with_values([:administrator, :dosen, :mahasiswa]) 
    }
  end
end
