class Librery < ApplicationRecord
	validates_presence_of  :libray_name
	validates_length_of :libray_name, :minimum => 4

	after_save :add_cat

	belongs_to :user
	has_many :categories
	has_many :books, :through => :categories

private
def add_cat
	a = Category.new(name:'Fiction',librery_id: (Librery.pluck(:id).last))
	a.save
end
end
