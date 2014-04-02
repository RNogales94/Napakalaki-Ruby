#!/usr/bin/env ruby
#encoding: utf-8

require_relative 'combatResult.rb'
require_relative 'player.rb'
require_relative 'cardDealer.rb'
require_relative 'monster.rb'

module Napakalaki
require "Singleton"

	#Clase Napakalaki
	class Napakalaki
		include Singleton
			def intialize()
				@currentPlayer
				@currentMonster
				@players = Array.new
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

			def discardVisibleTreasure(treasure)
			end

			def discardHiddenTreasure(treasure)
			end

			def makeTreasureVisible(treasure)
				return true
			end

			def buyLevels(visible, hidden)
				return true
			end

			def initGame(players)
			end

			def getCurrentPlayer()
			end

			def getCurrentMonster()
			end

			def canMakeTreasureVisible(treasure)
				return true
			end

			def getVisibleTreasures()
			end

			def getHiddenTreasures()
			end

			def nextTurn()
				return false
			end

			def nextTurnAllowed()
				return false
			end

			def endOfGame(result)
				return false
			end
	end #Napakalaki (clase)

end #Napakalaki (module)
