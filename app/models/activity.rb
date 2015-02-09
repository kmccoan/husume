class Activity < ActiveRecord::Base
  validates :name, :photoUrl, :link, :lat, :long, :presence => true

  has_many :activity_categorizations
  has_many :categories, through: :activity_categorizations

  default_scope { order(name: :asc) }
end