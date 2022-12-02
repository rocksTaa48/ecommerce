class AddSubcatsToItems < ActiveRecord::Migration[7.0]
  def change
    add_reference :items, :subcat, index: true
  end
end
