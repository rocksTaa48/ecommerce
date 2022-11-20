class CreateCarts < ActiveRecord::Migration[7.0]
  def change
    create_table :carts do |t|
      t.belongs_to :user, null: false
      t.belongs_to :item, null: false

      t.timestamps
    end
  end
end
