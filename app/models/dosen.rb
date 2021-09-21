class Dosen < User
  default_scope { where(user_type: :dosen) }

  def user_type
    :dosen
  end
end
