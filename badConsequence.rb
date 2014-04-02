#!/usr/bin/env ruby
#encoding: utf-8
module Napakalaki

require_relative 'treasureKind.rb'

#Clase BadConsequence: Representa el "mal rollo" de un monster
# text: 					    		    Explicacion del mal rollo
# levels: 				   			    Numero de niveles que pierdes
# nVisibleTreasure:    			    Numero de tesoros visibles que pierdes
# nHiddenTreasures: 			    Numero de tesoros ocultos que pierdes
# death: 								true: Si pierdes mueres / false: Si pierdes no mueres
# specificHiddenTreasures:     Lista de tesoros ocultos que pierdes
# specificVisibleTreasures:		Lista de tesoros visibles que pierdes

class BadConsequence
	
	def initialize(text, levels, nVisible, nHidden, death, specificVisibleTreasures, specificHiddenTreasures)
		@text = text
		@levels = levels
		@nVisibleTreasures = nVisible
		@nHiddenTreasures = nHidden
		@death = death
		@specificHiddenTreasures = specificHiddenTreasures.clone
		@specificVisibleTreasures =  specificVisibleTreasures.clone
	end
	  
  	#Constructores con Parametros:
  	
  	#newTreasures:
  	#Constructor al que se le pasan los datos miembros: text, levels, nVisible, nHidden
  	#Las listas de specificTreasures se quedan vacias y el valor de death es false
  	def self.newTreasures(text, levels, nVisible, nHidden)
    	newObj=allocate
    	newObj.send(:initialize, text, levels, nVisible, nHidden, false, [] , [])
    	newObj
  	end
  	
  	#newDeath:
    #Constructor al que se le pasa el texto y si la carta es de muerte o no
    #Se pone true para indicar que mueres si te gana el monstruo
    #Se pone false para indicar que NO mueres si te gana el monstruo
    #El resto de parametros se inicializan a 0 y las listas de specificTreasures se quedan vacias.
	def self.newDeath(text, death)
    	newObj=allocate
    	newObj.send(:initialize, text, 0, 0, 0, death, [], [])
    	newObj
  	end
  	
	#newKind:
  	#Constructor al que se le pasan los datos miembros: 
  	#Parametros: text, levels, specificVisibleTreasures, specificHiddenTresasures
  	#El tipo muerte se inicializa a false.
	def self.newKind(text, levels, specificVisibleTreasures, specificHiddenTreasures)
	    newObj=allocate
	    newObj.send(:initialize, text, levels, specificVisibleTreasures.size, specificHiddenTreasures.size, false, specificVisibleTreasures, specificHiddenTreasures)
	    newObj 
	end 	
	
	#Getters
	attr_reader :text
	attr_reader :levels
	attr_reader :nVisibleTreasures
	attr_reader :nHiddenTreasures
	attr_reader :death
	attr_reader :specificHiddenTreasures
	attr_reader :specificVisibleTreasures
	
	#Metodo para convertir objetos del tipo badConsequence al tipo string (debe llamarse to_s obligatoriamente)
	def to_s
		"Text = #{@text}, Levels = #{@levels}, NVisibleTreasures = #{@nVisibleTreasures}, NHiddenTreasures = #{@nHiddenTreasures}, Death = #{@death}, SpecificHiddenTreasures = #{@specificHiddenTreasures},  specificVisibleTreasures = #{@specificVisibleTreasures}"	
	end
	
end #BadConsequence
end #module Napakalaki