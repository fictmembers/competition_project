class TestsController < ApplicationController
  before_action :correct_company
  def new
  	  @test = LogicalTest.new
  end

  def create
    if params[:database] == '1'
    	@test = @company.company_logical_tests.new(test_params)
    	if @test.save
    		redirect_to new_test_url
    	else

    	end
    elsif params[:database] == '2'
      @test = @company.company_knowledge_tests.new(test_params)
      if @test.save
        redirect_to new_test_url
      else

      end
    end
  end

  def new_skilltask
    
  end

  def create_skilltask
    SkillsTask.create(:task => params[:task],:deadline => params[:task])
    redirect_to company_url(current_company.id)
  end

  def index
    @logical_tests = LogicalTest.all
    @knowledge_tests = KnowledgeTest.all
  end

  def check_added_tests
    @logical_tests = LogicalTest.all
    if params[:questions] != nil
        @logical_tests.each do |test|
          if params[:questions]["#{test.id}"] != nil
            @test = @company.company_logical_tests.new(:question => test.question,:answer1=> test.answer1,:answer2 => test.answer2,:answer3 => test.answer3,:answer4 => test.answer4,:right_answer => test.right_answer) if params[:questions]["#{test.id}"][:selected] == "1"
            @test.save
          end
        end  
        redirect_to company_url(current_company.id)
    else 
      redirect_to tests_url
    end
  end

  private

 def test_params
 	params.require(:test).permit(:question,:answer1,:answer2,:answer3,:answer4,:right_answer)
 end

 def correct_company
  @company = current_company
 end

end
