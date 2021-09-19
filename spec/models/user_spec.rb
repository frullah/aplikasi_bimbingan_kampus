require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { build(:user) }

  describe "validations" do
    context "presences" do
      it { is_expected.to validate_presence_of(:username) }
    end

    context "uniqueness" do
      it { expect(user).to validate_uniqueness_of(:username) }
    end
  end
end
