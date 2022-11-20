class CreateCategories < ActiveRecord::Migration[7.0]
  def change
    create_table :categories do |t|
      t.string :name, null: false
      t.string :title, null: false
      t.string :img_url
       
      t.timestamps
    end
  end
end
