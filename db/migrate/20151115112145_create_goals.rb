class CreateGoals < ActiveRecord::Migration
  def change
    create_table :goals do |t|
      t.string :title
      t.text :description
      t.string :picture
      t.string :location

      t.timestamps null: false
    end
  end
end
