class BookLib < ActiveRecord::Migration[5.2]
  def change
  	add_column :books , :lib_name , :string
  end
end