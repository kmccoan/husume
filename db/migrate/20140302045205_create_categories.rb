class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :name
      t.string :photoUrl
      t.belongs_to :category_type, index: true
      t.timestamps
    end
  end
end
