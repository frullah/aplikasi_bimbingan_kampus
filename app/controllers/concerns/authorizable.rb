module Authorizable
  def authorize!(user_type)
    # head :forbidden 
    unless user_type.to_sym == current_user.user_type.to_sym
      render template: "forbidden", layout: false, status: :forbidden
    end
  end

  def authorize_administrator!
    authorize! Administrator::USER_TYPE
  end

  def authorize_mahasiswa!
    authorize! Mahasiswa::USER_TYPE
  end

  def authorize_dosen!
    authorize! Dosen::USER_TYPE
  end
end
