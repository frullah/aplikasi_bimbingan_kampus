class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :rememberable, :validatable

  delegate :kkp_guidance, to: :kkp_registration

  validates :username, uniqueness: true, presence: true
  validates :id_number, uniqueness: {scope: :user_type}, allow_nil: true
  validates :name, presence: true, length: {maximum: 128}
  validates :phone_number, length: {maximum: 16}
  validates :email, uniqueness: true

  has_one :essay_proposal
  has_one :kkp_registration

  enum user_type: [
    :administrator,
    :dosen,
    :mahasiswa
  ]

  scope :administrator, -> { where(user_type: :administrator) }
  scope :dosen, -> { where(user_type: :dosen) }
  scope :mahasiswa, -> { where(user_type: :mahasiswa) }

  def menu_presenter
    case user_type.to_sym
    when :administrator
      AdministratorMenuPresenter
    when :dosen
      DosenMenuPresenter
    else
      MahasiswaMenuPresenter
    end
  end

  def password_required?
    !persisted?
  end

  def user_type_setter
    :mahasiswa
  end

  def email_required?
    false
  end
end
