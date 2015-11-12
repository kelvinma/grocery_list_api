class MealsController < OpenReadController
  before_action :set_meals, only: [:update, :destroy]

 def index
    @meals = Meal.all

    render json: @meals
  end

  # GET /meals/1
  def show
    @meal = Meal.find(params[:id])

    render json: @meal
  end

  # POST /meals
  def create
    @meal = current_user.meals.new(meal_params)

    if @meal.save
      render json: @meal, status: :created, location: @meal
    else
      render json: @meal.errors, status: :unprocessable_entity
    end
  end

  # PATCH /meals/1
  def update
    if @meal.update(meal_params)
      head :no_content
    else
      render json: @meal.errors, status: :unprocessable_entity
    end
  end

  # DELETE /meals/1
  def destroy
    @meal.destroy

    head :no_content
  end

  def set_meals
    @meal = current_user.meals.find(params[:id])
  end

  def meal_params
    params.require(:meal).permit(:recipe_id, :weekly_menu_id)
  end

  private :set_meals, :meal_params
end
