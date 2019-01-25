class AttendancesController < ApplicationController
  before_action :logged_in_user

  def show
    @invitation = Invitation.find_by(id: params[:id])
    if @attendance = Attendance.find_by(invitation_id: params[:id])
      @attendance
    else
      @attendance = Attendance.new
    end
  end

  def create
    @invitation = Invitation.find_by(id: params[:id])
    @attendance = Attendance.new(attendance_params)
    if @attendance.save
      redirect_to attendance_show_url(@attendance)
    else
      render "show"
    end
  end

  def update
    @attendance = Attendance.find_by(id: params[:id])
    if @attendance.update_attributes(attendance_params)
      redirect_to attendance_show_url(@attendance)
    else
      render 'design'
    end
  end

  def attendance_params
    params.require(:attendance).permit(
      :user_id, :invitation_id,
      :lastname, :firstname, :lastname_kana, :firstname_kana,
      :postcode, :address, :building_name, :phonenumber, :email, :allergy, :message
    )
  end
end
