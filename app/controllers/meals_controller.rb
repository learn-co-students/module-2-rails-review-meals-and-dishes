class MealsController < ApplicationController

  def index
    @meals = Meal.all
  end

  def show
    @meal = Meal.find(params[:id])
  end

  def new
    @meal = Meal.new
    @dishes = Dish.all
  end

  def create
    @meal = Meal.new(meal_params)
    if @meal.save
      redirect_to @meal
    else
      redirect_to new_meal_path
    end
  end

  def edit
    @meal = Meal.find(params[:id])
    @dishes = Dish.all

  end

  def update
    @meal = Meal.find(params[:id])
    if @meal.update(meal_params)
      redirect_to @meal
    else
      redirect_to edit_meal_path(@meal)
    end
  end

  def destroy
    Meal.find(params[:id]).destroy
    redirect_to meals_path
  end

  private

  def meal_params
    params.require(:meal).permit(:name, :date, :location)#, {:dish_ids => []})
  end

end
