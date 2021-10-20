class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :rememberable, :validatable

  validates :username, uniqueness: true, presence: true
  validates :id_number, uniqueness: {scope: :user_type}
  validates :name, presence: true, length: {maximum: 128}
  validates :phone_number, length: {maximum: 16}

  has_one :essay_proposal

  enum user_type: [
    :administrator,
    :dosen,
    :mahasiswa
  ]

  def menu_presenter
    case user_type.to_s
    when "administrator"
      AdministratorMenuPresenter
    when "dosen"
      DosenMenuPresenter
    else
      MahasiswaMenuPresenter
    end
  end

  def password_required?
    !persisted?
  end
end
