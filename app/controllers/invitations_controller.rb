class InvitationsController < ApplicationController

  def start
    @invitation = Invitation.find_by(id: params[:id])
  end

  def type
    @invitation = Invitation.find_by(id: params[:id])
  end

  def couple_name
    @invitation = Invitation.new
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

  def edit
    @invitation = Invitation.find_by(id: params[:id])
    @attendance = Attendance.find_by(invitation_id: params[:id])
  end

  def create
    @invitation = current_user.invitations.new(invitation_params)
    if @invitation.save
      redirect_to design_url(user_id: current_user, type_id: @invitation, id: @invitation)
    else
      render "couple_name"
    end
  end

  def update
    @invitation = Invitation.find_by(id: params[:id])
    if @invitation.update_attributes(invitation_params)
      redirect_to edit_invitation_url(@invitation)
    else
      render 'design'
    end
  end

  private

  def invitation_params
    params.require(:invitation).permit(
      :type_id, :design_id, :title, :greeting,
      :groom_last, :groom_first, :groom_last_kana, :groom_first_kana, :groom_msg,
      :bride_last, :bride_first, :bride_last_kana, :bride_first_kana, :bride_msg,
      :date1, :opentime1, :starttime1, :place1, :address1, :phonenumber1, :place_url1, :note1,
      :date2, :opentime2, :starttime2, :place2, :address2, :phonenumber2, :place_url2, :note2
    )
  end
end
