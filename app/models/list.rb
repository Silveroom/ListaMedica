class List < ApplicationRecord
	belongs_to :user
	belongs_to :patient

	validates :fecha, presence: true
	
end