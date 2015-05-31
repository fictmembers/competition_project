class TestsController < ApplicationController
  def new
  	  @test = LogicalTest.new
  end

  def create
    if params[:database] == '1'
    	@test = LogicalTest.new(test_params)
    	if @test.save
    		render 'new'
    	else

    	end
    elsif params[:database] == '2'
      @test = KnowledgeTest.new(test_params)
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
end
