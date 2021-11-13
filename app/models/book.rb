class Book < ApplicationRecord
  belongs_to :user
  has_many :chapters, dependent: :destroy
  has_many :book_publishers
  has_many :publishers, through: :book_publishers
   
end
