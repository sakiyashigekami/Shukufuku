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

  def preview
    @invitation = Invitation.find_by(id: params[:id])
    @attendance = Attendance.new
  end

  def confirm
  end

  def create
    @attendance = current_user.attendances.new(attendance_params)
    if @attendance.save
      redirect_to confirm_url(atd_id: @attendance.id)
    else
      render "show"
      flash[:danger] = "登録できませんでした"
    end
  end

  def update
    @attendance = Attendance.find_by(id: params[:id])
    if @attendance.update_attributes(attendance_params)
      redirect_to confirm_url(atd_id: @attendance.id)
    else
      render 'design'
    end
  end

  private

    def attendance_params
      params.require(:attendance).permit(
        :user_id, :invitation_id,
        :name, :kana,
        :postcode, :address, :phonenumber, :email, :allergy, :message
      )
    end
end
