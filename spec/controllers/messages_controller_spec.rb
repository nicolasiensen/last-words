require 'spec_helper'

describe MessagesController do
  describe "POST create" do
    it "should set session[:message]" do
      post :create, :message => {}
      session[:message].should be
    end
  end
end
