class NotesController < ApplicationController
  def index
  end

  def show
    @note = Note.find(params[:id])
  end

  def new
    @note = Note.new
  end
  
  def create
    @note = Note.new(params[:note])
    @note.user_id = current_user.id
    @note.date = Time.now.to_date
    if @note.save
      flash[:notice] = "Your thought has been saved"
      redirect_to user_path(current_user)
    else
      render :action => :new
    end
  end

end
