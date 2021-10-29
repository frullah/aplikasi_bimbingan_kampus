class KkpGuidance < ApplicationRecord
  belongs_to :kkp_registration

  delegate :user, to: :kkp_registration

  default_scope -> {
    joins(:kkp_registration)
      .where(kkp_registration: { status: :approved })
  }
end
