ActiveAdmin.register CategoryType do

  permit_params :name, :category_ids => []
  
  show do
	  attributes_table do
	    row :name
	    table_for category_type.categories.order('name ASC') do
	      column "Categories" do |category|
	        link_to category.name, [ :admin, category ]
	      end
	    end
	  end
	end
	 
	form do |f|
	  f.inputs "Add/Edit Activity" do
	    f.input :name
	    f.input :categories, :as => :check_boxes
	  end
	  f.actions
	end
end