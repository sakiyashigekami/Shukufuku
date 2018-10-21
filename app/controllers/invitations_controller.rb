class InvitationsController < ApplicationController

  def invitation_type
    @user = current_user
  end

  def couple_name
    @invitation = Invitation.new
  end

  def design
    @invitation = Invitation.find_by(id: params[:id])
  end

  def edit
    @invitation = Invitation.find_by(id: params[:id])
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
    if @invitation.update_attribute(:design_id, params[:design_id])
      redirect_to edit_invitation_url(@invitation)
    else
      render 'design'
    end
  end

  private

  def invitation_params
    params.require(:invitation).permit(
      :type_id, :design_id,
      :groom_last, :groom_first, :groom_last_kana, :groom_first_kana,
      :bride_last, :bride_first, :bride_last_kana, :bride_first_kana
    )
  end
end
