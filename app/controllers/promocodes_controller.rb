class PromocodesController < ApplicationController
  def new
  	@promo = Promocode.new
  end

  def show
  	@promo = Promocode.find_by(:task)
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
  	params.require(:promocode).permit(:text, :task, :id_foreign, :recipient)
  end
end