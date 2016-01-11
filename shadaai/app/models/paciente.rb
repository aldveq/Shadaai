class Paciente < ActiveRecord::Base
	validates :primerN, presence: true
	validates :segundoN, presence: true
	validates :primerA, presence: true
	validates :segundoA, presence: true
	validates :edad, presence: true, numericality: true
	validates :direccion, presence: true
	validates :telefono, presence: true, numericality: true, uniqueness: true					
end
