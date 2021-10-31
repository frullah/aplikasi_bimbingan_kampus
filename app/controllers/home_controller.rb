class HomeController < ApplicationController
  before_action :authenticate_user!

  def index
    redirect_to posts_url
  end
end
