class TestsController < ApplicationController
  def new
  	  @test = Test.new
  end

  def create
  	@test = Test.new(test_params)
  	if @test.save
  		render 'new'
  	else

  	end
  end

  private

 def test_params
 	params.require(:test).permit(:question,:answer1,:answer2,:answer3,:answer4,:right_answer)
 end
end
