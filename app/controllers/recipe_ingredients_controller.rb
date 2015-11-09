class RecipeIngredientsController < OpenReadController
  before_action :set_recipe_ingredient, only: [:update, :destroy]

 def index
    @recipe_ingredients = RecipeIngredient.all

    render json: @recipe_ingredients
  end

  # GET /recipe_ingredient/1
  def show
    @recipe_ingredient = RecipeIngredient.find(params[:id])

    render json: @recipe_ingredient
  end

  # POST /recipe_ingredients
  def create
    @recipe_ingredient = current_user.recipe_ingredient.new(recipe_ingredient_params)

    if @recipe_ingredient.save
      render json: @recipe_ingredient, status: :created, location: @recipe_ingredient
    else
      render json: @recipe_ingredient.errors, status: :unprocessable_entity
    end
  end

  # PATCH /recipe_ingredient/1
  def update
    if @recipe_ingredient.update(recipe_ingredient_params)
      head :no_content
    else
      render json: @recipe_ingredient.errors, status: :unprocessable_entity
    end
  end

  # DELETE /recipe_ingredient/1
  def destroy
    @recipe_ingredient.destroy

    head :no_content
  end

  def set_recipe_ingredient
    @recipe_ingredient = current_user.recipe_ingredient.find(params[:id])
  end

  def recipe_ingredient_params
    params.require(:recipe_ingredient).permit(:recipe_id, :ingredient_id)
  end

  private :set_recipe_ingredient, :recipe_ingredient_params
end
