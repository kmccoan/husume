class ActivitiesController < ApplicationController

  def index
    if params.has_key?("category_id") 
      @category = Category.find(params[:category_id])	
      @activities = Kaminari.paginate_array(@category.activities).page(params[:page]).per(1)
    else
      @activities = Activity.all
    end
  end

end
