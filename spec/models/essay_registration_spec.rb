require 'rails_helper'

RSpec.describe EssayRegistration, type: :model do
  describe "validations" do
    it { should validate_presence_of(:email) }
    it { should validate_presence_of(:phone_number) }
    it { should validate_presence_of(:proposal_title) }

    it { should have_one_attached(:proposal_outline_file) }
    it { should have_one_attached(:essay_registration_form_file) }
    it { should have_one_attached(:kkp_report_submission_proof_file) }
    it { should have_one_attached(:current_krs_file) }
    it { should have_one_attached(:payment_proof) }
    it { should have_one_attached(:academic_transcripts_file) }  
  end
  # if attachment is valid then 
end
