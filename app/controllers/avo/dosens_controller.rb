class Avo::DosensController < Avo::ResourcesController
  before_action :authenticate_user!

  def custom_tool
    @page_title = "aa"
  end
end
