class CreateCategoties < ActiveRecord::Migration[7.0]
  def change
    create_table :categoties do |t|
      t.string :name, null: false
      t.string :title, null: false
      t.string :img_url, null: false 
       
      t.timestamps
    end
  end
end
