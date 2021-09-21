class Profile < ApplicationRecord
	#belongs_to :user
	validates :screenname, presence: true
	validates :city, presence: true
	validates :user_id, presence: true
	#has_many :comments, dependent: :destroy
end
