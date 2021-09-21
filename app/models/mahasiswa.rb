class Mahasiswa < User
  default_scope { where(user_type: :administrator) }

  def user_type
    :mahasiswa
  end
end
