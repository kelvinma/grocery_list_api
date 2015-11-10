class WeeklyMenusController < OpenReadController
    before_action :set_weekly_menu, only: [:update, :destroy]

  def index
    @weeklymenus = WeeklyMenu.where(user_id: current_user)

    render json: @weeklymenus
  end

  # GET /weekly_menus/1
  def show
    @weeklymenu = WeeklyMenu.find(params[:id])

    render json: @weeklymenu
  end

  # POST /weekly_menus
  def create
    @weeklymenu = current_user.weekly_menus.new(weeklymenu_params)

    if @weeklymenu.save
      render json: @weeklymenu, status: :created, location: @weeklymenu
    else
      render json: @weeklymenu.errors, status: :unprocessable_entity
    end
  end

  # PATCH /weekly_menus/1
  def update
    if @weeklymenu.update(weeklymenu_params)
      head :no_content
    else
      render json: @weeklymenu.errors, status: :unprocessable_entity
    end
  end

  # DELETE /weekly_menus/1
  def destroy
    @weeklymenu.destroy

    head :no_content
  end

  def set_weeklymenu
    @weeklymenu = current_user.weekly_menus.find(params[:id])
  end

  def weeklymenu_params
    params.require(:weekly_menu).permit(:week_of)
  end

  private :set_weeklymenu, :weeklymenu_params
end
