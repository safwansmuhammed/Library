class AlterLibrerysAndCategoriesAndBooks < ActiveRecord::Migration[5.2]
  def change
  	add_column :libreries, :libray_name, :string, :limit=>25
  	remove_column :libreries,:name
  	add_column :categories, :book_counts, :integer
  	remove_column :categories, :book_count
  	rename_column :books, :name, :book_name
  end
end
