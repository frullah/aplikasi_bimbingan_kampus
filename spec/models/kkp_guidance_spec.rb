require "rails_helper"

RSpec.describe KkpGuidance, type: :model do
  it { is_expected.to belong_to(:kkp_registration) }
  # it { is_expected.to delegate(:user).to(:kkp_registration) }

  fit "default scope to approved kkp_registration" do
    guidance = create(:kkp_guidance)
    guidance.kkp_registration.update(status: :approved)

    create(:kkp_guidance)

    expect(KkpGuidance.all).to eq([guidance])
  end
end
