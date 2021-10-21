FactoryBot.define do
  factory :kkp_registration do
    entity_name { "MyString" }
    status { :pending }
    individual { true }
    members { "Member1" }
    entity_type { [:upper, :middle_to_lower].sample }
    registration_form_file { Rack::Test::UploadedFile.new("spec/fixtures/dummy.pdf", "application/pdf") }
    khs_semester_6 { Rack::Test::UploadedFile.new("spec/fixtures/dummy.pdf", "application/pdf") }
    krs_semester_7 { Rack::Test::UploadedFile.new("spec/fixtures/dummy.pdf", "application/pdf") }
    payment_proof_file { Rack::Test::UploadedFile.new("spec/fixtures/dummy.pdf", "application/pdf") }
    academic_transcript_file { Rack::Test::UploadedFile.new("spec/fixtures/dummy.pdf", "application/pdf") }
  end
end
