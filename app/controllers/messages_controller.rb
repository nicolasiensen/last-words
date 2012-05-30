class MessagesController < InheritedResources::Base
  before_filter :only => [:create] { session[:message] = params[:message] }
  load_and_authorize_resource

  def create
    params[:message] = session.delete(:message).merge(:mortal_id => current_mortal.id)
    create! do |success, failure|
      success.html { redirect_to @message and return }
    end
  end

  def create_from_session
    create
  end
end
