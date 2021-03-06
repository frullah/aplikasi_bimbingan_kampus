class Administrator < User
  USER_TYPE = :administrator

  default_scope { where(user_type: USER_TYPE) }

  after_initialize :set_user_type
  before_save :set_user_type

  def set_user_type
    self.user_type = USER_TYPE
  end
end
