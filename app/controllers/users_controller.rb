class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
      if @user.save
        @user.send_activation_email
        flash[:info] = "確認メールを送信しました。"
        redirect_to root_url
      end
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
end
