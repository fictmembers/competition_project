class UsersController < ApplicationController
  def index
    @users = User.paginate(page: params[:page])
  end

  def new
  	@user = User.new()
  end

  def show
  	@user = User.find(params[:id])
    @invite = Promocode.where(recipient: @user.id)
  end

  def code
  end

  def check_code
    user_codes = Promocode.find_by(recipient: current_user.id)
      if user_codes.task == params[:code]
        redirect_to current_user
      else
        redirect_to enter_code_url
      end
  end

  def create
    @user = User.new(user_params)
    if @user.save
#      Messager.sample_email(@user).deliver           // DON'T TOUCH!!!
      sign_in(@user)
      flash[:success] = "Welcome to the app"
      redirect_to @user
    else
      render 'new'
    end
  end

  private

    def user_params
     params.require(:user).permit(:name, :email, :password,
                                  :password_confirmation)
    end
end
