class InvitationsController < ApplicationController
  before_action :logged_in_user
  before_action :ensure_correct_user, only: [:index, :couple_name, :type]
  before_action :ensure_inv_correct_user, except: [:index, :couple_name, :type, :preview, :create, :update]

  def start
    @invitation = Invitation.find_by(id: params[:id])
  end

  def index
    @invitations = Invitation.where(user_id: params[:user_id]).order("created_at ASC")
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
    @attendance = Attendance.new
    @invitation = Invitation.find_by(id: params[:id])
    if @invitation.design_id == 1
      render "preview1"
    elsif @invitation.design_id == 2
      render "preview2"
    elsif @invitation.design_id == 3
      render "preview3"
    elsif @invitation.design_id == 4
      render "preview4"
    end
  end

  def show
    @invitation = Invitation.find_by(id: params[:id])
    @attendance_form = AttendanceForm.find_by(invitation_id: params[:id])
    @url = request.url
    @url_encode = CGI.escape(@url)
  end

  def create
    @invitation = current_user.invitations.new(invitation_params)
    @attendance_form = current_user.attendance_forms.new(attendance_form_params)

    if @invitation.save && @attendance_form.save
      redirect_to design_url(user_id: current_user, type_id: @invitation, id: @invitation)
    else

    end
  end

  def update
    @invitation = Invitation.find_by(id: params[:id])
    @attendance_form = AttendanceForm.find_by(user_id: current_user.id, type_id: @invitation.type_id)
    if @invitation.update_attributes(invitation_params) && @attendance_form.update_attributes(invitation_id: @invitation.id)
      redirect_to invitation_url(@invitation)
    else

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
        :user_id, :invitation_id, :type_id
      )
    end
end
