class Category < ApplicationRecord

	validates_presence_of  :name
	validates_length_of :name, :minimum => 4

	belongs_to :user
	has_many :books
	belongs_to :librery
end
