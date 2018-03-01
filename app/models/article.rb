class Article < ApplicationRecord
	#数据验证
	has_many :comments, dependent: :destroy
	validates :title, presence: true, length: {minimum: 5}
end
