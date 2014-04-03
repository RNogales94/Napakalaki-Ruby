#!/usr/bin/env ruby
#encoding: utf-8

module Napakalaki

class Treasure

  def initialize(name, goldCoins, minBonus, maxBonus, type)
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

  def to_s
    "\nName = #{@name}, \nGoldcoins = #{@goldCoins}, \nminBonus: #{@minBonus}, \nmaxBonus: #{@maxBonus}, \ntype: #{@type}"
  end

end #Monster
end
