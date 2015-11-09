class RecipesController < OpenReadController
    before_action :set_recipe, only: [:update, :destroy]

 def index
    @recipes = Recipe.all

    render json: @recipes
  end

  # GET /recipes/1
  def show
    @recipe = Recipe.find(params[:id])

    render json: @recipe
  end

  # POST /recipes
  def create
    @recipe = current_user.recipes.new(recipe_params)

    if @recipe.save
      render json: @recipe, status: :created, location: @recipe
    else
      render json: @recipe.errors, status: :unprocessable_entity
    end
  end

  # PATCH /recipes/1
  def update
    if @recipe.update(recipe_params)
      head :no_content
    else
      render json: @recipe.errors, status: :unprocessable_entity
    end
  end

  # DELETE /recipes/1
  def destroy
    @recipe.destroy

    head :no_content
  end

  def set_recipe
    @recipe = current_user.recipes.find(params[:id])
  end

  def recipe_params
    params.require(:recipe).permit(:name, :which_meal, :style, :instructions)
  end

  private :set_recipe, :recipe_params
end
