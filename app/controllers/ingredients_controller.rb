class IngredientsController < OpenReadController
before_action :set_ingredient, only: [:update, :destroy]

def index
    @ingredients = Ingredient.all

    render json: @ingredients
  end

  # GET /ingredients/1
  def show
    @ingredient = Ingredient.find(params[:id])

    render json: @ingredient
  end

  # POST /ingredients
  def create
    @ingredient = current_user.ingredients.new(ingredient_params)

    if @ingredient.save
      render json: @ingredient, status: :created, location: @ingredient
    else
      render json: @ingredient.errors, status: :unprocessable_entity
    end
  end

  # PATCH /ingredients/1
  def update
    if @ingredient.update(ingredient_params)
      head :no_content
    else
      render json: @ingredient.errors, status: :unprocessable_entity
    end
  end

  # DELETE /ingredients/1
  def destroy
    @ingredient.destroy

    head :no_content
  end

  def set_ingredient
    @ingredient = current_user.ingredients.find(params[:id])
  end

  def ingredient_params
    params.require(:ingredient).permit(:name, :type_of, :is_vegetarian, :is_vegan)
  end

  private :set_ingredient, :ingredient_params
end
