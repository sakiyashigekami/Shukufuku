class AttendancesController < ApplicationController

  def show
    @attendance = Attendance.new
    @invitation = Invitation.find_by(id: params[:id])
  end

  def create
    @invitation = Invitation.find_by(id: params[:id])
    @attendance = @invitation.attendance.new(attendance_params)
    if @attendance.save
      redirect_to attendance_url(@attendance)
    else
      render "show"
    end
  end

  def update
    @attendance = Attendance.find_by(id: params[:id])
    if @attendance.update_attributes(attendance_params)
      redirect_to edit_attendance_url(@attendance)
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
