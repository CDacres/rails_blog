class Post < ApplicationRecord
	has_many :comments

	validates :title, :author, :theme, :body, presence: true
	validates :picture, format: { with: URI.regexp, message: " must contain a valid image url" }
	validates :title, uniqueness: { message: " already exists" }
end
