class Avo::AdministratorsController < Avo::ResourcesController
  include Authorizable

  before_action :authenticate_user!
  before_action :authorize_administrator!
end
