require "rails_helper"

RSpec.describe EssayProposal, type: :model do
  describe "validations" do
    it { should validate_presence_of(:title) }

    it { should have_one_attached(:outline_file) }
    it { should have_one_attached(:form_file) }
    it { should have_one_attached(:kkp_report_submission_proof_file) }
    it { should have_one_attached(:current_krs_file) }
    it { should have_one_attached(:payment_proof_file) }
    it { should have_one_attached(:academic_transcript_file) }
  end
  # if attachment is valid then
end
