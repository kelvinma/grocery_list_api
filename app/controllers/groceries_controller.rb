class GroceriesController < OpenReadController
   before_action :set_grocery, only: [:update, :destroy]

 def index
    @groceries = Grocery.all

    render json: @groceries
  end

  # GET /groceries/1
  def show
    @grocery = Grocery.find(params[:id])

    render json: @grocery
  end

  # POST /groceries
  def create
    @grocery = current_user.groceries.new(grocery_params)

    if @grocery.save
      render json: @grocery, status: :created, location: @grocery
    else
      render json: @grocery.errors, status: :unprocessable_entity
    end
  end

  # PATCH /groceries/1
  def update
    if @grocery.update(grocery_params)
      head :no_content
    else
      render json: @grocery.errors, status: :unprocessable_entity
    end
  end

  # DELETE /groceries/1
  def destroy
    @grocery.destroy

    head :no_content
  end

  def set_grocery
    @grocery = current_user.groceries.find(params[:id])
  end

  def grocery_params
    params.require(:grocery).permit(:ingredient_id, :weekly_menu_id, :amount)
  end

  private :set_grocery, :grocery_params
end
