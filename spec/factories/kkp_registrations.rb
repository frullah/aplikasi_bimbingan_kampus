FactoryBot.define do
  factory :kkp_registration do
    user

    entity_name { "MyString" }
    kkp_type { :individual }
    members { "Member1" }
    entity_type { [:upper, :middle_lower].sample }
    registration_form_file { Rack::Test::UploadedFile.new("spec/fixtures/dummy.pdf", "application/pdf") }
    khs_semester_6 { Rack::Test::UploadedFile.new("spec/fixtures/dummy.pdf", "application/pdf") }
    krs_semester_7 { Rack::Test::UploadedFile.new("spec/fixtures/dummy.pdf", "application/pdf") }
    payment_proof_file { Rack::Test::UploadedFile.new("spec/fixtures/dummy.pdf", "application/pdf") }
    academic_transcript_file { Rack::Test::UploadedFile.new("spec/fixtures/dummy.pdf", "application/pdf") }
  end
end
