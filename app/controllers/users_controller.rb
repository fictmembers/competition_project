class UsersController < ApplicationController
  def index
    @users = User.paginate(page: params[:page])
  end

  def new
  	@user = User.new()
  end

  def show
  	@user = User.find(params[:id])
    @invite = Promocode.find_by(mailed_to: params[@user.id])
  end

  def create
    @user = User.new(user_params)
    if @user.save
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
