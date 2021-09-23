FactoryBot.define do
  factory :essay_registration do
    user { nil }
    email { "MyString" }
    phone_number { "MyString" }
    proposal_title { "MyString" }
    proposal_outline_file { nil }
    essay_registration_form_file { nil }
    kkp_report_submission_proof_file { nil }
    current_krs_file { nil }
    payment_proof { nil }
    academic_transcripts_file { nil }
  end
end
