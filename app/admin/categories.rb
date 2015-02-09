ActiveAdmin.register Category do

	permit_params :name, :photoUrl, :category_type_id
  
end