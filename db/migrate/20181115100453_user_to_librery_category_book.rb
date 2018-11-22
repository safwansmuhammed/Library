class UserToLibreryCategoryBook < ActiveRecord::Migration[5.2]
  def change
  	add_reference :libreries, :user
  	add_reference :categories, :user
  	add_reference :books, :user
  end
end
