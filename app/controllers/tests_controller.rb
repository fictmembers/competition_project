class TestsController < ApplicationController
  before_action :correct_company
  def new
  	  @test = LogicalTest.new
  end

  def create
    if params[:database] == '1'
    	@test = @company.company_logical_tests.new(test_params)
    	if @test.save
    		render 'new'
    	else

    	end
    elsif params[:database] == '2'
      @test = @company.company_knowledge_tests.new(test_params)
      if @test.save
        render 'new'
      else

      end
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
