class Avo::MahasiswasController < Avo::ResourcesController
  before_action :authenticate_user!

  def create
    super
  end
end
