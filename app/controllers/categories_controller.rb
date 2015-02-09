class CategoriesController < ApplicationController

 def index
    if params.has_key?("category_type_id") 
      @categories = Category.where(category_type_id: params[:category_type_id])
    else
      @categories = Category.all
    end
  end
  
end
