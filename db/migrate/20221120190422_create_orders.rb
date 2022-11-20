class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :phone_number, null: false
      t.string :country, null: false
      t.string :city, null: false
      t.string :address, null: false
      t.string :count, null: false, default: "1"
      t.belongs_to :user, null: false
      t.belongs_to :item, null: false

      t.timestamps
    end
  end
end
