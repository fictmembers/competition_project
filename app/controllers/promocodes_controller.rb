class PromocodesController < ApplicationController
  before_action :correct_company, only: :destroy

  def destroy
    @promo.destroy
    redirect_to promocodes_path
  end

  def new
  	@promo = Promocode.new
  end

  def create
    @promo = current_company.promocodes.build(promo_require)
    @promo.company_sender = current_company.name
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

  def correct_company
    @code = current_company.promocodes.find(current_company.id)
  end
end