#!/usr/bin/env ruby
module Napakalaki

#Clase Monster: Representa la estructura principal de cada una de las cartas de
#monstruos que se van a usar, contiene un "buen rollo" y un "mal rollo" ademas
#de un nombre y un nivel para el mismo

class Monster

#name Nombre del Monstruo
#level Nivel del Monstruo
#bad "mal rollo" del Monstruo
#prize "buen rollo" del Monstruo

	def initialize(name, level, bad, prize)
		@name = name
		@level = level
		@bad = bad
		@prize = prize
	end #initialize

	#Getters
	attr_reader :name
	attr_reader :level
	attr_reader :bad
	attr_reader :prize

	#Metodo de conversion de Prize a string
	def to_s
		"\nName = #{@name}, \nLevel = #{@level}, \nBadConsequence: #{@bad}, \nPrize: #{@prize}"
	end

end #Monster
end
