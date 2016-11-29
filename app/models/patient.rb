class Patient < ApplicationRecord	
	has_many :lists
	has_many :users, through: :lists, dependent: :destroy

	def paciente_nombre
		"#{nombre} #{appaterno} #{apmaterno}"
	end
end