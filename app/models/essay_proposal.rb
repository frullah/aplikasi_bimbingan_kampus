class EssayProposal < ApplicationRecord
  belongs_to :user

  has_one_attached :outline_file
  has_one_attached :registration_form_file
  has_one_attached :kkp_report_submission_proof_file
  has_one_attached :current_krs_file
  has_one_attached :payment_proof
  has_one_attached :academic_transcripts_file

  validates :title, presence: true
  validates :outline_file, presence: true
  validates :registration_form_file, presence: true
  validates :kkp_report_submission_proof_file, presence: true
  validates :current_krs_file, presence: true
  validates :payment_proof, presence: true
  validates :academic_transcripts_file, presence: true
end
