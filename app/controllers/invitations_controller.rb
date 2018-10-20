class InvitationsController < ApplicationController

  def invitation_type
    @inv = Invitation.new
    @user = current_user
  end

  def couple_name
    @inv = Invitation.find_by(id: params[:id])
  end

  def design
  end
end
