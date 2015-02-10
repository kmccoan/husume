class Category < ActiveRecord::Base
	validates :name, :photoUrl, :category_type_id, :presence => true
	validates_uniqueness_of :name, scope: :category_type 
	
	has_many :activity_categorizations
	has_many :activities, through: :activity_categorizations
	belongs_to :category_type

	default_scope { order(name: :asc) }
end
