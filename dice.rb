#!/usr/bin/env ruby
#encoding: utf-8

module Napakalaki
require "Singleton"

	#Clase Dice
	class Dice
		include Singleton
		public
			def  self.getInstance() #static
					return instance
			end

			def  nextNumber()
					return (rand(6) + 1)
			end
	end

	#Para probar que funciona le hago un pequeño "main"
	if __FILE__ == $0
		p = Dice.instance
		for i in(1..10)
			puts p.nextNumber
		end
	end #if __FILE__

end #module Napakalaki
