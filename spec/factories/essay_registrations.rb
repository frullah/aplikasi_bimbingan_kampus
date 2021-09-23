FactoryBot.define do
  factory :essay_proposal do
    user { nil }
    email { "MyString" }
    phone_number { "MyString" }
    title { "MyString" }
    outline_file { nil }
    registration_form_file { nil }
    kkp_report_submission_proof_file { nil }
    current_krs_file { nil }
    payment_proof { nil }
    academic_transcripts_file { nil }
  end
end
