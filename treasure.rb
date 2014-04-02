#!/usr/bin/env ruby

require_relative 'treasureKind.rb'

module Napakalaki

class Treasure

  def initialize(name, goldCoins, minBonus, maxBonus,type)
    @name = name
    @goldCoins = goldCoins
    @minBonus = minBonus
    @maxBonus = maxBonus
    @type = type
  end #initialize

  #Getters
  attr_reader :name
  attr_reader :goldCoins
  attr_reader :minBonus
  attr_reader :maxBonus
  attr_reader :type


end #Monster
end
