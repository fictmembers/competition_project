class CompaniesController < ApplicationController
  before_action :signed_in_company, only: [:edit,:update]
  before_action :correct_company,   only: [:edit, :update]
  def show
  	@company = Company.find(params[:id])
  end

  def index
    @companies = Company.paginate(page: params[:page])
  end

  def new
  	@company = Company.new()
  end

  def edit
  end

  def update
    if @company.update_attributes(company_params)
      flash[:success] = "Profile updated"
      redirect_to @company
    else
      render 'edit'
    end
  end

  def create
  	@company = Company.new(company_params)
  	if @company.save
      sign_in_company @company
  		redirect_to @company
  	else
  		render 'new'
  	end
  end

  private

  def company_params
  	params.require(:company).permit(:name, :email, :manager,:password, :password_confirmation)
  end

  def signed_in_company
    redirect_to signin_url, notice: "Будь-ласка,зайдіть в профіль" unless signed_in?
  end

  def correct_company
      @company = Company.find(params[:id])
      redirect_to(root_url) unless current_company?(@company)
  end
end
