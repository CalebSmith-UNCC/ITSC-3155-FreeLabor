class Article < ApplicationRecord
    belongs_to :user
    
    has_many :comments
    validates :title, presence: true, length: { minimum: 5 }
    validates :text, presence: true, length: { minimum: 10 }
end
