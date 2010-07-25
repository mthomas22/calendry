class ToDosController < ApplicationController
  def new
    @todo = ToDo.new
  end
  
  def create
    @todo = ToDo.new(params[:to_do])
    @todo.start_date = params[:start_date]
    @todo.user_id = current_user.id
    @todo.date = Time.now.to_date
    if @todo.save
      flash[:notice] = "Your item has been saved."
      redirect_to user_path(current_user)
    else
      render :action => :new
    end
  end

  def edit
  end

end
