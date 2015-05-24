class PromocodesController < ApplicationController
  def new
  	@promo = Promocode.new
  end

  def show
    input = params[:autcode][:code] unless params[:autcode].nil?
  	@promo = Promocode.where(task: input)

    if @promo != nil
      render 'show'
    else
      render 'show'
    end
  end

  def create
  	@promo = Promocode.new(promo_require)
  	if @promo.save
  		redirect_to current_company
  	else
  		render 'new'
  	end
  end

  def update
    
  end

  private
  def promo_require
  	params.require(:promocode).permit(:text, :task, :recipient)
  end
end