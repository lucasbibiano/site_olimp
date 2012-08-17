class Competicao < ActiveRecord::Base
	has_and_belongs_to_many :competicoes
	
	attr_accessible :idade_max, :idade_min, :nome, :sexo
end
