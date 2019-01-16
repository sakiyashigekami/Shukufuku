class InvitationsController < ApplicationController

  def start
    @invitation = Invitation.find_by(id: params[:id])
  end

  def type
    @invitation = Invitation.find_by(id: params[:id])
  end

  def couple_name
    @invitation = Invitation.new
    @attendance_form = AttendanceForm.new
  end

  def design
    @invitation = Invitation.find_by(id: params[:id])
  end

  def profile
    @invitation = Invitation.find_by(id: params[:id])
  end

  def date_place
    @invitation = Invitation.find_by(id: params[:id])
  end

  def greeting
    @invitation = Invitation.find_by(id: params[:id])
  end

  def preview
  end

  def show
    @invitation = Invitation.find_by(id: params[:id])
    @attendance_form = AttendanceForm.find_by(invitation_id: params[:id])
  end

  def create
    @invitation = current_user.invitations.new(invitation_params)
    @attendance_form = current_user.attendance_forms.new(attendance_form_params)

    if @invitation.save && @attendance_form.save
      redirect_to design_url(user_id: current_user, type_id: @invitation, id: @invitation)
    else
      render "couple_name"
    end
  end

  def update
    @invitation = Invitation.find_by(id: params[:id])
    @attendance_form = AttendanceForm.find_by(user_id: current_user.id, type_id: @invitation.type_id)
    if @invitation.update_attributes(invitation_params) && @attendance_form.update_attributes(invitation_id: @invitation.id)
      redirect_to invitation_url(@invitation)
    else
      render 'design'
    end
  end

  private

    def invitation_params
      params.require(:invitation).permit(
        :type_id, :design_id, :title, :greeting, :public,
        :groom_last, :groom_first, :groom_last_kana, :groom_first_kana, :groom_msg,
        :bride_last, :bride_first, :bride_last_kana, :bride_first_kana, :bride_msg,
        :date1, :opentime1, :starttime1, :place1, :address1, :phonenumber1, :place_url1, :note1,
        :date2, :opentime2, :starttime2, :place2, :address2, :phonenumber2, :place_url2, :note2
      )
    end

    def attendance_form_params
      params.require(:invitation).permit(
        :user_id, :type_id
      )
    end
end
