class EssayProposal < ApplicationRecord
  belongs_to :user

  has_one_attached :outline_file
  has_one_attached :form_file
  has_one_attached :kkp_report_submission_proof_file
  has_one_attached :current_krs_file
  has_one_attached :payment_proof_file
  has_one_attached :academic_transcript_file

  # TODO: add activestorage validations, only accept PDF file
  validates :title, presence: true
  validates :outline_file, presence: true
  validates :form_file, presence: true
  validates :kkp_report_submission_proof_file, presence: true
  validates :current_krs_file, presence: true
  validates :payment_proof_file, presence: true
  validates :academic_transcript_file, presence: true

  enum status: [:pending, :rejected, :approved]
end
