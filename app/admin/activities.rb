ActiveAdmin.register Activity do

	permit_params :name, :photoUrl, :link, :lat, :long
  
end
