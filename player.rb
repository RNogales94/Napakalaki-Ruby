#!/usr/bin/env ruby
#encoding: utf-8

module Napakalaki

class Player

  def initialize(name)
      @name = name;
      @level = 0;
      @dead = false;
      @HiddenTreasures = nil;
      @VisibleTreasures = nil;
      @pendingBadConsequence = nil;
  end

  private
    def bringtolife()
    end

    def incrementLevels()
    end

    def decrementLevels()
    end

    def die()
        dead = true;
    end

    def discardNecklaceIfVisible()
    end

    def dieIfNoTreasures()
    end

    #Array treasure
    def computeGoldCoinsValue(t)
    end

    #float
    def canIBuyLevels(l)
    end

  public
    #prize
    def applyPrize(p)
    end

    #monster
    def combat(m)
    end

    #basconsequence
    def applyBadConsequence(bad)
    end

    #treasure
    def makeTreasureVisible(t)
    end

    #treasure
    def canMakeTreasureVisible(t)
    end

    #treasure
    def discardVisibleTreasure(t)
    end

    #treasure
    def discardHiddenTreasure(t)
    end

    #Array treasure, Array treasure
    def buyLevels(visible, hidden)
    end

    def validState()
    end

    def initTreasures()
    end

    def hasVisibleTreasures()
    end

    attr_writer :pendingBadConsequence
    attr_reader :Dead
    attr_reader :level
    attr_reader :VisibleTreasures
    attr_reader :HiddenTreasures
end
