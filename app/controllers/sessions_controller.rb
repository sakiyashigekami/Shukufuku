class SessionsController < ApplicationController
  skip_before_action :verify_authenticity_token
  
  def new
  end

  def create
    @user = User.find_by(email: params[:session][:email].downcase)
      if @user && @user.authenticate(params[:session][:password])
        if @user.activated?
          log_in(@user)
          if params[:session][:remember_me] == '1'
            remember(@user)
          else
            forget(@user)
          end
          redirect_to mypage_url(@user)
        else
          message  = "アカウントを有効化できませんでした。再度お送りしたリンクをご確認ください。"
          flash[:warning] = message
          redirect_to root_url
        end
      else
        flash.now[:danger] = "メールアドレス、またはパスワードが違います。"
        render "new"
      end
  end

  def destroy
    log_out if logged_in?
    flash[:success] = "ログアウトしました。"
    redirect_to root_url
  end
end
