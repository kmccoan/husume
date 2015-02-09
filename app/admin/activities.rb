ActiveAdmin.register Activity do

	permit_params :name, :photoUrl, :weather, :link, :lat, :long
  
end
