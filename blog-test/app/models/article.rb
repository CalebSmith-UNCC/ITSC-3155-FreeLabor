class Article < ApplicationRecord
    belongs_to :user
    has_one_attached :image
    has_many :likes
    has_many :comments, dependent: :destroy
    validates :title, presence: true, length: { minimum: 5 }
    validates :text, presence: true, length: { minimum: 10 }
end
