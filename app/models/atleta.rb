class Atleta < ActiveRecord::Base
	belongs_to :organizacao
	has_and_belongs_to_many :competicoes
	
	attr_accessible :idade, :nome, :sexo
end
