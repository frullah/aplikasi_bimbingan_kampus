module Authorizable
  def authorize!(user_type)
    head :forbidden unless user_type == current_user.user_type
  end

  def authorize_administrator!
    authorize! Administrator::USER_TYPE
  end

  def authorize_mahasiswa!
    authorize! Mahasiswa::USER_TYPE
  end
end
