class KkpRegistration < ApplicationRecord
  belongs_to :user

  has_one_attached :registration_form_file
  has_one_attached :khs_semester_6
  has_one_attached :krs_semester_7
  has_one_attached :payment_proof_file
  has_one_attached :academic_transcript_file

  # TODO: add spec
  has_one_attached :official_memo

  has_rich_text :revision_message

  # TODO: add activestorage validations, only accept PDF file
  validates :entity_name, presence: true
  validates :registration_form_file, presence: true
  validates :khs_semester_6, presence: true
  validates :krs_semester_7, presence: true
  validates :payment_proof_file, presence: true
  validates :academic_transcript_file, presence: true

  enum status: [:pending, :rejected, :approved]
  enum entity_type: [:upper, :middle_lower]

  def self.individual_options
    [
      ["KKP Individu", true],
      ["KKP Kelompok", false]
    ]
  end

  def self.entity_type_options
    [
      ["Usaha Makro Kelas Atas", :upper],
      ["Usaha Makro Menengah ke bawah", :middle_lower]
    ]
  end
end
