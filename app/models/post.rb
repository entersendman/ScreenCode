class Post < ApplicationRecord
	validates :title, :text, :code, presence: true
	has_many :comments
end
