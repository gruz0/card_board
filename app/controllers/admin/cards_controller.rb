class Admin::CardsController < Admin::BaseController
  before_filter :set_card, only: [:show, :update, :edit]

  def index
    @cards = Card.all
  end

  def show

  end

  def edit

  end

  def update
    respond_to do |format|
      if @card.update(card_params)
        format.html { redirect_to @card, notice: t('.success') }
      else
        format.html { render :edit }
      end
    end
  end

  private

  def set_card
    @card = Card.find(params[:id])
  end

  def card_params
    params.require(:card).permit(:post_id)
  end
end
