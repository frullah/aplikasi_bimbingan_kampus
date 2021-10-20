FactoryBot.define do
  factory :essay_proposal do
    title { "MyString" }
    outline_file { Rack::Test::UploadedFile.new("spec/fixtures/dummy.pdf", "application/pdf") }
    form_file { Rack::Test::UploadedFile.new("spec/fixtures/dummy.pdf", "application/pdf") }
    kkp_report_submission_proof_file { Rack::Test::UploadedFile.new("spec/fixtures/dummy.pdf", "application/pdf") }
    current_krs_file { Rack::Test::UploadedFile.new("spec/fixtures/dummy.pdf", "application/pdf") }
    payment_proof_file { Rack::Test::UploadedFile.new("spec/fixtures/dummy.pdf", "application/pdf") }
    academic_transcript_file { Rack::Test::UploadedFile.new("spec/fixtures/dummy.pdf", "application/pdf") }
  end
end
