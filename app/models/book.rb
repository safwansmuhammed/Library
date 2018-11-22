class Book < ApplicationRecord
	belongs_to :user
	belongs_to :category
	after_save :increment_book_count
	after_destroy :decrement_book_count
	after_update :decrement_book_count


	def increment_book_count
			self.category.update_attribute("book_counts", (category.book_counts + 1))
		end
	def decrement_book_count
		self.category.update_attribute("book_counts", (category.book_counts - 1))
	end
end
