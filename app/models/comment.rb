class Comment < ApplicationRecord
	belongs_to :post

	validates :name, :body, :email, presence: true
	validates :email, format: { with: /\A[^@\s]+@([^@.\s]+\.)+[^@.\s]+\z/ }
end
