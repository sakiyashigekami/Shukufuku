class UsersController < ApplicationController
  before_action :logged_in_user

  def new
    @user = User.new
  end

  def show
    @user = current_user
    @invitation = Invitation.find_by(user_id: params[:user_id])
    @message_card = MessageCard.new
  end

  def create
    @user = User.new(user_params)
      if @user.save
        @user.send_activation_email
        redirect_to send_email_url
      end
  end

  def payment
    @user = current_user
  end

  def send_email
  end

  private

    def user_params
      params.require(:user).permit(
        :name, :email, :password, :password_confirmation,
        :user_image, :provider, :uid,
      )
    end

    def correct_user
      @user = User.find_by(id: params[:id])
      redirect_to root_url unless current_user?(@user)
    end
end
