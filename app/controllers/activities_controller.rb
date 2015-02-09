class ActivitiesController < ApplicationController

  def index
    if params.has_key?("category_id") 
    	category = Category.find(params[:category_id])	
      @activities = category.activities
    else
      @activities = Activity.all
    end
  end

end
