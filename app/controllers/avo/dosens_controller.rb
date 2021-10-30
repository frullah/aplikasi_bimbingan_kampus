class Avo::DosensController < Avo::ResourcesController
  include Authorizable

  before_action :authenticate_user!
  before_action :authorize_administrator!

  # def custom_tool
  #   @page_title = "aa"
  # end
end
