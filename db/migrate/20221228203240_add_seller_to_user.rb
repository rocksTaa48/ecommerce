class AddSellerToUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :seller, :boolean, default: false
  end
end
