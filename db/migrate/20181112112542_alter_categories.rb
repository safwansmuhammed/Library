class AlterCategories < ActiveRecord::Migration[5.2]
  def change
  	change_column :categories, :book_counts, :integer, default: 0
  end
end
