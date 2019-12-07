class YTestsController < ApplicationController
  def new
    @y_test = YTest.new
  end

  def create
    @y_test = YTest.new(y_test_params)

    @y_test.user_id = current_user.id
    @y_test.athlete_id = session[:athlete_id]
    @y_test.right_result = ((@y_test.right_PA + @y_test.right_PM + @y_test.right_PL) / (@y_test.right_CM * 3)) * 100
    @y_test.left_result = ((@y_test.left_PA + @y_test.left_PM + @y_test.left_PL) / (@y_test.left_CM * 3)) * 100
    @y_test.right_qualitative_result = calc_result(@y_test.right_result)
    @y_test.left_qualitative_result = calc_result(@y_test.left_result)

    if @y_test.save
      next_evaluation()
    else
      render "new"
    end
  end

  def edit
    @y_test = YTest.find(params[:id])
  end

  def update
    @y_test = YTest.find(params[:id])

    if @y_test.update_attributes(y_test_params)
      redirect_to "/athletes/" + @y_test.athlete_id.to_s
    else
      render "edit"
    end
  end

  def destroy
    @y_test = YTest.find(params[:id])
    @y_test.destroy
    redirect_to "/athletes/" + @y_test.athlete_id.to_s
  end

  private
  def y_test_params
    params.require(:y_test).permit(:right_PA, :right_PM, :right_PL, :right_CM, :left_PA, :left_PM, :left_PL, :left_CM)
  end

  private
  def calc_result(result)
    if result > 90
      return "Bom"
    else
      return "Ruim"
    end
  end

end
