class KkpGuidance < ApplicationRecord
  belongs_to :kkp_registration

  has_one_attached :report_file
  has_one_attached :score_file

  has_rich_text :revision_message

  delegate :user, to: :kkp_registration
  delegate :entity_name, to: :kkp_registration

  default_scope -> {
    joins(:kkp_registration)
      .where(kkp_registration: {status: :approved})
  }

  def supervisor_score_total
    percentage = 0.7
    (((
      presentation_score.to_i +
      material_score.to_i +
      material_mastery_score.to_i +
      language_score.to_i +
      writing_style_score.to_i
    ) / 5.0) * percentage).round
  end

  def field_counselor_score_total
    percentage = 0.3
    (((
      innovation_score.to_i +
      teamwork_score.to_i +
      discipline_score.to_i
    ) / 3.0) * percentage).round
  end

  def total_score
    supervisor_score_total + field_counselor_score_total
  end

  def grade
    total_score >= 80 ? "A" : (total_score >= 60 ? "B" : "C")
  end
end
