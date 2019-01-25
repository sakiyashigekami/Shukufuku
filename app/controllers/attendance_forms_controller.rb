class AttendanceFormsController < ApplicationController
  before_action :logged_in_user
  
  def show
    @invitation = Invitation.find_by(id: params[:id])
    @attendance_form = AttendanceForm.find_by(id: params[:atdform_id])
  end

  def update
    @invitation = Invitation.find_by(id: params[:id])
    @attendance_form = AttendanceForm.find_by(id: params[:atdform_id])
    if @attendance_form.update_attributes(attendance_form_params)
      redirect_to attendance_form_show_url(id: @invitation, atdform_id: @attendance_form)
    else
      render 'show'
    end
  end

  private

    def attendance_form_params
      params.require(:attendance_form).permit(
        :due_date, :greeting,
        :name, :name_sel,
        :kana, :kana_sel,
        :postcode, :postcode_sel,
        :address, :address_sel,
        :phonenumber, :phonenumber_sel,
        :email, :email_sel,
        :allergy, :allergy_sel,
        :message, :message_sel
      )
    end
end
