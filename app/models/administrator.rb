class Administrator < User
  default_scope { where(user_type: :administrator) }

  def user_type
    :administrator
  end
end
