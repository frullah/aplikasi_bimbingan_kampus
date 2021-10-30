class ApplicationController < ActionController::Base
  include Authorizable

  add_flash_types :info, :success, :danger
end
