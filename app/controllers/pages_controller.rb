class PagesController < ApplicationController
  def main
  	@category_types = Kaminari.paginate_array(CategoryType.joins(:activities).uniq).page(params[:page]).per(1)
  end
end
