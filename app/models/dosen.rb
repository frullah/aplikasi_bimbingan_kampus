class Dosen < User
  USER_TYPE = :dosen

  default_scope { where(user_type: USER_TYPE) }

  validates :id_number, presence: true

  after_initialize :set_user_type
  before_save :set_user_type

  def set_user_type
    self.user_type = USER_TYPE
  end
end
