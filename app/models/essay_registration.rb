class EssayRegistration < ApplicationRecord
  belongs_to :user

  has_one_attached :proposal_outline_file
  has_one_attached :essay_registration_form_file
  has_one_attached :kkp_report_submission_proof_file
  has_one_attached :current_krs_file
  has_one_attached :payment_proof
  has_one_attached :academic_transcripts_file

  validates :proposal_title, presence: true
  validates :proposal_outline_file, presence: true
  validates :essay_registration_form_file, presence: true
  validates :kkp_report_submission_proof_file, presence: true
  validates :current_krs_file, presence: true
  validates :payment_proof, presence: true
  validates :academic_transcripts_file, presence: true
end
