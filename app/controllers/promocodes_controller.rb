class PromocodesController < ApplicationController
  def new
  	@promo = Promocode.new
  end

  def create
  	@promo = Promocode.new(promo_require)
  	if @promo.save
  		redirect_to current_company
  	else
  		render 'new'
  	end
  end

  private
  def promo_require
  	params.require(:promocode).permit(:text, :task, :recipient)
  end
end