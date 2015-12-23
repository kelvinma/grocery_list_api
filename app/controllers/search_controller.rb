class SearchController < OpenReadController

  def index
    require 'httparty'
    require 'json'

    if params[:q]

      @query = params[:q].gsub(' ', '%20')
      results = HTTParty.get("http://api.yummly.com/v1/api/recipes?_app_id=f583cb2d&_app_key=19f845ecfc5f2697e7f185cb13d85e3d&q=#{@query}")

      render json: results
    else
      render json: 'Please Enter Search Terms'
    end
  end
end
