class CreateItems < ActiveRecord::Migration[7.0]
  def change
    create_table :items do |t|
      t.string :title, null: false
      t.string :body, null: false
      t.integer :price, precision: 12, scale: 3, null: false
      t.string :img_url
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :category, null: false, foreign_key: true
      t.integer :quantity, default: 0

      t.timestamps
    end
  end
end

