require "rails_helper"

RSpec.describe KkpRegistration, type: :model do
  it "has attachments"
  it { is_expected.to belong_to(:user).conditions(user_type: :mahasiswa) }
  it { is_expected.to have_one(:kkp_guidance) }

  fit "create kkp_guidance if approved" do
    registration = create(:kkp_registration, status: :approved)
    expect(registration.kkp_guidance).to be_present
  end
end
