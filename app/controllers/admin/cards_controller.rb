class Admin::CardsController < Admin::BaseController
  before_action :set_card, only: [:show, :update, :edit]

  def index
    @cards = Card.all
  end

  def edit
    @post = Post.find_by_card_id(params[:id])
  end

  def update
    respond_to do |format|
      @post = Post.find(params[:post])
      if @post.update_attributes(card_id: @card.id)
        format.html { redirect_to admin_cards_path, notice: 'Карточка успешно обновлена!' }
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
