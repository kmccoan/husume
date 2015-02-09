class CategoryType < ActiveRecord::Base
	validates :name, :presence => true
	validates_uniqueness_of :name

	has_many :categories
end
