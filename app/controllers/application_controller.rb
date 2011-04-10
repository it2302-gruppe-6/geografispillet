class ApplicationController < ActionController::Base
  include ControllerAuthentication
  protect_from_forgery

  # GET /
  def index
    @users = User.all

    respond_to do |format|
      format.html # index.html.erb
    end
  end

end
