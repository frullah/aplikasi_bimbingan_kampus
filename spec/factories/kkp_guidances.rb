
FactoryBot.define do
  factory :kkp_guidance do
    kkp_registration

    # after(:create) do |record|
    #   record.kkp_registration.update(:status: :approved)
    # end
    # presentation_score { nil }
    # material_score { nil }
    # material_mastery_score { nil }
    # language_score { nil }
    # writing_style_score { nil }
    # innovation_score { nil }
    # teamwork_score { nil }
    # discipline_score { nil }
  end
end
