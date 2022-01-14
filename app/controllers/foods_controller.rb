
class FoodsController < ApplicationController
  def index
    @foods = Food.all
    @food = Food.last
  end
  
  def create #this is where the program requests info from the api
    @response = HTTParty.get("https://is-vegan.netlify.app/.netlify/functions/api?ingredients=#{params[:ingredient]}")
    parsed_response = JSON.parse(@response.parsed_response)
    Food.create(name: parsed_response["checkedIngredient"], is_vegan: parsed_response["isVeganSafe"])
    redirect_to :back
  end

  def show
    @food = Food.find(params[:id])
  end

  def edit
    @food = Food.find(params[:id])
    #instance variable, being passed to the view
    render :edit
  end

  def update
    food = Food.find(params[:id])
    #this is a local variable because there is no "update" view,
    #we are not using this food variable outside of this method
    food.update(food_params)
  
    flash[:notice] = "You've successfully edited #{food.name}"
  
    redirect_to root_path
  end

  def destroy
    food = Food.find(params[:id])
    #again going with local variable for same reason above
    food.destroy
    flash[:notice] = "You've deleted #{food.name}"
    redirect_to root_path
  end  
  private
  
  def food_params
    params.require(:food).permit(:name, :calories, :is_vegan)
  end
end