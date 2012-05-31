class ApplicationController < ActionController::Base
  protect_from_forgery
  helper_method :current_mortal

  rescue_from CanCan::AccessDenied do |exception|
    redirect_to new_session_path, :alert => exception.message
  end

  def current_mortal
    @current_mortal ||= Mortal.find_by_id(session[:current_mortal_id])
  end

  def current_mortal= mortal
    session[:current_mortal_id] = mortal.id
  end

  def current_ability
    @current_ability ||= Ability.new(current_mortal)
  end
end
