class CategoryType < ActiveRecord::Base
	validates :name, :presence => true
	validates_uniqueness_of :name

	has_many :categories
	has_many :activities, through: :categories
	default_scope { order(name: :asc) }
end
