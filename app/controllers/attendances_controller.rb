class AttendancesController < ApplicationController

  def show
    @invitation = Invitation.find_by(id: params[:id])
    unless @attendance
      @attendance = Attendance.new
    end
    @attentdance = Attendance.find_by(invitation_id: params[:id])
  end
end
