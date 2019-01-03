class MessageCardsController < ApplicationController

  def new
    @message_card = MessageCard.new
  end

  def show
    @message_card = MessageCard.find_by(id: params[:id])
  end

  def create
    @message_card = current_user.message_cards.new
    if @message_card.save
      redirect_to message_card_url(id: @message_card)
    else
      render "new"
    end
  end
end
