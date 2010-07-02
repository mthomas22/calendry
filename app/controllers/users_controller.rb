class UsersController < ApplicationController
  def new
    @user = User.new
  end
  
  def show
    @user = User.find(params[:id])
    @date = params[:month] ? Date.parse(params[:month]) : Date.today
    @notes = @user.notes
  end
  
  def create
    @user = User.new(params[:user])
    if @user.save
      flash[:notice] = "Thanks for creating your account. Now get started"
      redirect_to user_path(@user)
    else
      render :action => :new
    end
  end

  def edit
    @user = User.find(params[:id])
  end
  
  def update
    @user = User.find(params[:user])  
    if @user.update_attributes(params[:user])
      flash[:notice] = "Your account has been updated"
      redirect_to user_path(@user)
    else
      render :action => :edit
    end
  end

end
