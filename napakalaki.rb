#!/usr/bin/env ruby
#encoding: utf-8

module Napakalaki
require "Singleton"

	#Clase Napakalaki
	class Napakalaki
		include Singleton

		#Constructor (es privado para que la clase sea singleton), no conocemos la
    #implementación del constructor probablemente inicie a los players a traves
    #de una peticion, y posteriormente inicie el juego con initgame() por ello:
		#(faltan las comprobaciones pendiente de pregunta).
			def intialize()
					Playernames = Array.new
					@players = Array.new
					@currentPlayer = nil
					@currentMonster = nil
					puts "Número de jugadores: "
					int numPlayers = 0
					numPlayers = gets

					for i in 0..numPlayers
						name = gets
  					Playernames.push(name)
  				end

  				initGame(Playernames)
			end

		private
			def initPlayers(names)
			end

			def nextPlayer()
			end

		public
	    def  self.getInstance() #static
	        return instance
	    end

			def combat()
			end

			#treasure
			def discardVisibleTreasure(t)
			end

			#treasure
			def discardHiddenTreasure(t)
			end

			#treasure
			def makeTreasureVisible(t)
				return true
			end

			#Array treasure, Array treasure
			def buyLevels(visible, hidden)
				return true
			end

			#Array String
			def initGame(players)
				initPlayers(players)
			end

			def getCurrentPlayer()
			end

			def getCurrentMonster()
			end

			#treasure
			def canMakeTreasureVisible(t)
			end

			def getVisibleTreasures()
			end

			def getHiddenTreasures()
			end

			def nextTurn()
			end

			def nextTurnAllowed()
			end

			#boolean
			def endOfGame(result)
			end
	end #Napakalaki (clase)

end #Napakalaki (module)
