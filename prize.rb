#!/usr/bin/env ruby
#encoding: utf-8
module Napakalaki

#Clase Prize:	Representa el "buen rollo" de un monster
#treasures: 	Numero de tesoros que ganas al vencer al monster
#levels:			Numero de niveles que ganas al vencer al monster
class Prize
	def initialize(treasures, levels)
		@treasures = treasures
		@levels = levels
	end #initialize
	
	#Getters
	attr_reader :treasures
	attr_reader :levels
		
	#Metodo de conversion de Prize a string
	def to_s
		"Treasures = #{@treasures}, Levels = #{@levels}"
	end
	
end #Prize
end #modulue Napakalaki










