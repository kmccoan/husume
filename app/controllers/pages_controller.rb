class PagesController < ApplicationController
  def main
  	@category_ids_with_activities = Category.joins(:activities).pluck(:id).uniq
  	@category_types = Kaminari.paginate_array(CategoryType.joins(:categories).where(categories: {id: @category_ids_with_activities}).uniq).page(params[:page]).per(1)
  end
end
