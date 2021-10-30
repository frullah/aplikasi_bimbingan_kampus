class KkpRegistration < ApplicationRecord
  include RevisableRegistration

  belongs_to :user, -> { where(user_type: :mahasiswa) }

  has_one :kkp_guidance

  has_one_attached :registration_form_file
  has_one_attached :khs_semester_6
  has_one_attached :krs_semester_7
  has_one_attached :payment_proof_file
  has_one_attached :academic_transcript_file

  # TODO: add activestorage validations, only accept PDF file
  validates :entity_name, presence: true
  validates :registration_form_file, presence: true
  validates :khs_semester_6, presence: true
  validates :krs_semester_7, presence: true
  validates :payment_proof_file, presence: true
  validates :academic_transcript_file, presence: true

  enum entity_type: [:upper, :middle_lower]
  enum kkp_type: [:individual, :group], _prefix: true

  after_save :sync_with_kkp_guidance

  def kkp_type=(value)
    write_attribute(:individual, value == :individual)

    super(value)
  end

  # DEPRECATED:
  def individual=(is_individual)
    self.kkp_type = if is_individual
      :individual
    else
      :group
    end
  end

  # DEPRECATED:
  def individual
    kkp_type.to_sym == :individual
  end

  def self.kkp_type_options
    [
      ["KKP Individu", :individual],
      ["KKP Kelompok", :group]
    ]
  end

  def self.entity_type_options
    [
      ["Usaha Makro Kelas Atas", :upper],
      ["Usaha Makro Menengah ke bawah", :middle_lower]
    ]
  end

  private def sync_with_kkp_guidance
    binding.pry
    if approved? && kkp_guidance.nil?
      build_kkp_guidance.save!
    end
  end
end
