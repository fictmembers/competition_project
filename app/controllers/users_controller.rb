class UsersController < ApplicationController
  def index
    @users = User.paginate(page: params[:page])
  end

  def new
  	@user = User.new()
  end

  def show
  	@user = User.find(params[:id])
  end

  def code
  end

  def check_code
    user_code = Promocode.where("task = ? AND recipient = ?", params[:code], current_user.id).take
      if user_code
        redirect_to companytest_url
      else
        redirect_to enter_code_url
      end
  end

  def company_test

    @tests =  LogicalTest.limit(10)
    @answer = []

    @tests.each do |test|

    end
  end


  def knowledge_test
    @tests =  KnowledgeTest.limit(10)
    @answer = []
    @tests.each do |test|

    end
  end


  def check_test
    @tests =  LogicalTest.limit(10)
    @ans = []
    @index = 0
    @right_answers = 0
    @tests.each do |test|
      @ans << params[:answer]["#{test.id}"][:selected_answer]
      if @ans[@index] == test.right_answer
        @right_answers+=1
      end
      @index+=1
    end
    if @right_answers > (@index/2)
    redirect_to successlogicaltest_url
  else
    redirect_to failtest_url
  end
end

def check_knowledge_test
  @tests =  KnowledgeTest.limit(10)
  @ans = []
  @index = 0
  @right_answers = 0
  @tests.each do |test|
    @ans << params[:answer]["#{test.id}"][:selected_answer]
    if @ans[@index] == test.right_answer
      @right_answers+=1
    end
    @index+=1
  end
  if @right_answers > (@index/2)
  redirect_to successtest_url
else
  redirect_to failtest_url
end
end






  def check_tests
      if user_code
        redirect_to companytest_url
      else
        redirect_to enter_code_url
      end
  end


  def invitations
    @user = User.find(current_user.id)
    @invite = Promocode.where(recipient: current_user.id)
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
