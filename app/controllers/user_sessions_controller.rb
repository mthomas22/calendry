class UserSessionsController < ApplicationController
  # before_filter :require_no_user, :only => [:new, :create]
  # before_filter :require_user, :only => :destroy
  
  def new
    @user_session = UserSession.new
  end
  
  def create
    @user_session = UserSession.new(params[:user_session])
    if @user_session.save
      user = User.find_by_email(@user_session.email)
      flash[:notice] = "You are officially logged in.  Now go start planning!"
      redirect_back_or_default user_path(user)
    else 
      render :action => :new
    end
  end
  
  def destroy
    current_user_session.destroy
    flash[:notice] = "You're done already? Oh well. See ya next time."
    redirect_back_or_default root_url
  end
end
