class WeeklyMenusController < OpenReadController
    before_action :set_weekly_menu, only: [:update, :destroy]

def index
    @weeklymenus = WeeklyMenu.all

    render json: @weeklymenus
  end

  # GET /books/1
  def show
    @weeklymenu = WeeklyMenu.find(params[:id])

    render json: @weeklymenu
  end

  # POST /weeklymenus
  def create
    @weeklymenu = current_user.weeklymenus.new(weeklymenu_params)

    if @weeklymenu.save
      render json: @weeklymenu, status: :created, location: @weeklymenu
    else
      render json: @weeklymenu.errors, status: :unprocessable_entity
    end
  end

  # PATCH /weeklymenus/1
  def update
    if @weeklymenu.update(weeklymenu_params)
      head :no_content
    else
      render json: @weeklymenu.errors, status: :unprocessable_entity
    end
  end

  # DELETE /weeklymenus/1
  def destroy
    @weeklymenu.destroy

    head :no_content
  end

  def set_weeklymenu
    @weeklymenu = current_user.weeklymenus.find(params[:id])
  end

  def weeklymenu_params
    params.require(:weeklymenu).permit(:week_of)
  end

  private :set_weeklymenu, :book_params
end