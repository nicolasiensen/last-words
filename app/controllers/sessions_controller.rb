class SessionsController < ApplicationController
  def new
  end

  def create
    self.current_mortal = Mortal.find_or_create_from_auth_hash(request.env['omniauth.auth'])
    if session[:message]
      redirect_to create_from_session_messages_path
    else
      redirect_to root_path
    end
  end
end
