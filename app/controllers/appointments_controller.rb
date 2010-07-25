class AppointmentsController < ApplicationController
  def show
  end

  def new
    @appointment = Appointment.new
  end

  def create
    @appointment = Appointment.new(params[:appointment])
    @appointment.start_time = params[:start_time]
    @appointment.end_time = params[:end_time]
    @appointment.user_id = current_user.id
    @appointment.date = params[:start_time].to_date
    if @appointment.save
      flash[:notice] = "Your apppointment has been saved"
      redirect_to user_path(current_user)
    else
      render :action => :new
    end
  end

  def edit
  end

end
