#!/usr/bin/env ruby
require_relative 'badConsequence.rb'
require_relative 'prize.rb'
require_relative 'monster.rb'
require_relative 'treasureKind.rb'

module Napakalaki
	if __FILE__ == $0
			
			puts "\nLista de Todos los monstruos"
            puts monsters

      puts "\nMonstruos con nivel > 10"
      for i in 0..18
      	if monsters[i].level > 10
        		puts monsters[i]
      	end
      end

      puts "\nMonstruos con un mal rollo que implican sólo pérdida de niveles"
      for i in 0..18
      	if monsters[i].bad.nHiddenTreasures == 0 && monsters[i].bad.nVisibleTreasures == 0 && monsters[i].bad.death == false && monsters[i].level > 0
        		puts monsters[i]
      	end
      end

      puts "\nMonstruos con un buen rollo que indica una ganancia de niveles superior a 1"
      for i in 0..18
      	if monsters[i].prize.levels > 1
        		puts monsters[i]
      	end
      end

      puts "\nMonstruos con un mal rollo que suponen la pérdida de un determinado tipo de tesoros ya sea visibles o no"
        for i in 0..18
        	if monsters[i].bad.nHiddenTreasures > 0 || monsters[i].bad.nVisibleTreasures > 0
        		puts monsters[i]
        	end
        end

	end #if __FILE__
end #module napakalaki
