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
end #module Napakalaki
