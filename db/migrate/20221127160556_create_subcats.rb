class CreateSubcats < ActiveRecord::Migration[7.0]
  def change
    create_table :subcats do |t|
      t.string :name, null: false
      t.string :title, null: false
      t.string :img_url
      t.belongs_to :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
