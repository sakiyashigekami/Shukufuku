module UsersHelper

  def ensure_correct_user
    if current_user.id != params[:user_id].to_i
      flash[:danger] = "権限がありません"
      redirect_to root_url
    end
  end

  def ensure_inv_correct_user
    @invitation = Invitation.find_by(id: params[:id])
    if current_user.id != @invitation.user_id
      flash[:danger] = "権限がありません"
      redirect_to root_url
    end
  end

  def ensure_msg_card_correct_user
    @msg_card = MessageCard.find_by(id: params[:id])
    if current_user.id != @msg_card.user_id
      flash[:danger] = "権限がありません"
      redirect_to root_url
    end
  end

  def ensure_atd_correct_user
    @attendance = Attendance.find_by(id: params[:id])
    if current_user.id != @attendance.user_id
      flash[:danger] = "権限がありません"
      redirect_to root_url
    end
  end

  def ensure_atdform_correct_user
    @invitation = Invitation.find_by(id: params[:id])
    if current_user.id != @invitation.user_id
      flash[:danger] = "権限がありません"
      redirect_to root_url
    end
  end

  def ensure_list_correct_user
    if current_user.id != params[:user_id].to_i
      flash[:danger] = "権限がありません"
      redirect_to root_url
    end
  end
end
