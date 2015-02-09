class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.string :name
      t.string :photoUrl
	    t.string :link
	    t.decimal :lat
	    t.decimal :long

      t.timestamps
    end
  end
end
