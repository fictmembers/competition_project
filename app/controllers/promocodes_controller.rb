class PromocodesController < ApplicationController
  def new
  	@promo = Promocode.new
  end

  def show
  	@user_task = Promocode.find_by(:task)
  end

  def create
  	@promo = Promocode.new(promo_require)
  	if @promo.save
  		render 'new'
  	else
  		render 'new'
  	end
  end

  private
  def promo_require
  	params.require(:promocode).permit(:text, :recipient, :task)
  end
end
