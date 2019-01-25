class MessageCardsController < ApplicationController
  before_action :logged_in_user
  before_action :ensure_correct_user, only: [:index]
  before_action :ensure_msg_card_correct_user, except: [:index]

  def index
    @message_cards = MessageCard.where(user_id: params[:user_id]).order("created_at ASC")
  end

  def new
    @message_card = MessageCard.new
  end

  def show
    @message_card = MessageCard.find_by(id: params[:id])
  end

  def profile
    @message_card = MessageCard.find_by(id: params[:id])
  end

  def greeting
    @message_card = MessageCard.find_by(id: params[:id])
  end

  def create
    @message_card = current_user.message_cards.new(message_card_params)
    if @message_card.save
      redirect_to message_card_url(id: @message_card)
    else
      render "new"
    end
  end

  def update
    @message_card = MessageCard.find_by(id: params[:id])
    if @message_card.update_attributes(message_card_params)
      redirect_to message_card_url(@message_card)
    else
      render 'design'
    end
  end

  private

    def message_card_params
      params.require(:message_card).permit(
        :msg_design_id, :title, :date, :greeting, :public,
        :groom_last, :groom_first, :groom_last_kana, :groom_first_kana,
        :bride_last, :bride_first, :bride_last_kana, :bride_first_kana,
      )
    end
end
