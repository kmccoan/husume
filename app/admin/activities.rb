ActiveAdmin.register Activity do

	permit_params :name, :photoUrl, :link, :lat, :long, :category_ids => []
	
	show do
	  attributes_table do
	    row :name
	    row :photoUrl
	    row :link
	    row :lat
	    row :long
	    table_for activity.categories.order('name ASC') do
	      column "Categories" do |category|
	        link_to category.name, [ :admin, category ]
	      end
	    end
	  end
	end
	 
	form do |f|
	  f.inputs "Add/Edit Activity" do
	    f.input :name
	    f.input :photoUrl
	    f.input :link
	    f.input :lat
	    f.input :long
	    f.input :categories, :as => :check_boxes
	  end
	  f.actions
	end
  
end
