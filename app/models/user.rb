class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :rememberable, :validatable

  validates :username, uniqueness: true, presence: true
  validates :id_number, uniqueness: {scope: :username}

  enum user_type: [
    :administrator,
    :dosen,
    :mahasiswa
  ]
end
