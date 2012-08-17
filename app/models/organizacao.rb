class Organizacao < ActiveRecord::Base
	has_many :atletas
	
	attr_accessible :nome
end
