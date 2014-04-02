#!/usr/bin/env ruby
#encoding: utf-8

require_relative 'dice.rb'
require_relative 'badConsequence.rb'
require_relative 'treasure.rb'
require_relative 'cardDealer.rb'
require_relative 'combatResult.rb'

module Napakalaki

class Player

    def bringtolife()
    end

    def incrementLevels()
        level++;
    end

    def decrementLevels()
        level--;
    end

    def die()
        dead = true;
    end

    def discardNecklaceIfVisible()
    end

    def dieIfNoTreasures()
    end

    def computeGoldCoinsValue(t)
    end

    def canIBuyLevels(l)
    end

    def applyPrize(p)
    end

    def combat(m)
    end

    def applyBadConsequence(bad)
    end

    def makeTreasureVisible(t)
    end

    def canMakeTreasureVisible(t)
    end

    def discardVisibleTreasure(t)
    end

    def discardHiddenTreasure(t)
    end

    def buyLevels(visible, hidden)
    end

    def validState()
    end

    def initTreasures()
    end

    def hasVisibleTreasures()
    end

    def initialize(name)
        @name = name;
        @level = 0;
        @dead = false;
        @HiddenTreasures = nil;
        @VisibleTreasures = nil;
        @pendingBadConsequence = nil;
    end

    attr_writer :pendingBadConsequence
    attr_reader :Dead
    attr_reader :level
    attr_reader :VisibleTreasures
    attr_reader :HiddenTreasures
end
