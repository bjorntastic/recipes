class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
    	t.string :title
    	t.text :description
      t.timestamps null: false
    end
  end
end
