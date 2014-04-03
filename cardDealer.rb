#!/usr/bin/env ruby
#encoding: utf-8

#require_relative 'monster.rb'
#require_relative 'treasure.rb'
#require_relative 'treasureKind.rb'
#require_relative 'prize.rb'
#require_relative 'badConsequence.rb'


module Napakalaki

require "Singleton"

	#Clase CardDealer
	class CardDealer
		include Singleton

	  def initialize()
	  	@unusedMonster = Array.new
	  	@usedMonster = Array.new
	  	@unusedTreasures = Array.new
	  	@usedTreasures = Array.new
			initCards
		end

		private

    def initTreasureCardDeck()
			  item = Treasure.new("¡Si mi amo!", 0, 4, 7, HELMET)
        @unusedTreasures.push(item)
        item = Treasure.new("Botas de investigacion", 600, 3, 4, SHOE)
        @unusedTreasures.push(item)
        item = Treasure.new("Capucha de Cthulu", 500, 3, 5, HELMET)
        @unusedTreasures.push(item)
        item = Treasure.new("A prueba de babas verdes", 400, 3, 5, ARMOR)
        @unusedTreasures.push(item)
        item = Treasure.new("Botas de lluvia acida", 800, 1, 1, BOTHHANDS)
        @unusedTreasures.push(item)
        item = Treasure.new("Casco minero", 400, 2, 4, HELMET)
        @unusedTreasures.push(item)
        item = Treasure.new("Ametralladora Thompson", 600, 4, 8, BOTHHANDS)
        @unusedTreasures.push(item)
        item = Treasure.new("Camiseta de la UGR", 100, 1, 7, ARMOR)
        @unusedTreasures.push(item)
        item = Treasure.new("Clavo de rail ferroviario", 400, 3, 6, ONEHAND)
        @unusedTreasures.push(item)
        item = Treasure.new("Cuchillo de sushi arcano", 300, 2, 3, ONEHAND)
        @unusedTreasures.push(item)
        item = Treasure.new("Fez alópodo", 700, 3, 5, HELMET)
        @unusedTreasures.push(item)
        item = Treasure.new("Hacha prehistorica", 500, 2, 5, ONEHAND)
        @unusedTreasures.push(item)
        item = Treasure.new("El aparato del Pr. Tesla", 900, 4, 8, ARMOR)
        @unusedTreasures.push(item)
        item = Treasure.new("Gaita", 200, 1, 5, BOTHHANDS)
        @unusedTreasures.push(item)
        item = Treasure.new("Insecticida", 300, 2, 3, ONEHAND)
        @unusedTreasures.push(item)
        item = Treasure.new("Escopeta de tres cañones", 700, 4, 6, BOTHHANDS)
        @unusedTreasures.push(item)
        item = Treasure.new("Garabato místico", 300, 2, 2, ONEHAND)
        @unusedTreasures.push(item)

				#Puesto que La fuerza de Mr.T es un objeto especial y se encarga de
        #otorgar el bonus maximo, aun no conocemos la implementacion, tendra los
        #valores de 0,0 en maxbonus y minbonus por el momento.
        item = Treasure.new("La fuerza de Mr.T", 1000, 0, 0, NECKLACE)
        @unusedTreasures.push(item)

        item = Treasure.new("La rebeca metalica", 400, 2, 3, ARMOR)
        @unusedTreasures.push(item)
        item = Treasure.new("Mazo de los antigos", 200, 3, 4, ONEHAND)
        @unusedTreasures.push(item)
        item = Treasure.new("Necrocomicon", 100, 1, 1, ONEHAND)
        @unusedTreasures.push(item)
        item = Treasure.new("Necronomicon", 800, 5, 7, BOTHHANDS)
        @unusedTreasures.push(item)
        item = Treasure.new("Linterna a 2 manos", 400, 3, 6, BOTHHANDS)
        @unusedTreasures.push(item)
        item = Treasure.new("Necrognomicon", 200, 2, 4, ONEHAND)
        @unusedTreasures.push(item)
        item = Treasure.new("Necrotelecom", 300, 2, 3, HELMET)
        @unusedTreasures.push(item)
        item = Treasure.new("Porra preternatural", 200, 2, 3, ONEHAND)
        @unusedTreasures.push(item)
        item = Treasure.new("Tentaculo de pega", 200, 0, 1, HELMET)
        @unusedTreasures.push(item)
        item = Treasure.new("Zapatilla deja-amigos", 500, 0, 1, SHOE)
        @unusedTreasures.push(item)
        item = Treasure.new("Shogulador", 600, 1, 1, BOTHHANDS)
        @unusedTreasures.push(item)
        item = Treasure.new("Varita de atizamiento", 400, 3, 4, ONEHAND)
        @unusedTreasures.push(item)
    end

    def initMonsterCardDeck()
			tvp=Array.new
			top=Array.new

			tvp.push(ARMOR)
			top.push(ARMOR)
			n_prize = Prize.new(2,1)
			n_bad = BadConsequence.newKind("Pierdes tu armadura visible y otra oculta.",0, tvp, top)
			@unusedMonster.push(Monster.new("3 Byakhees de bonanza", 8, n_bad, n_prize))
			tvp.clear
			top.clear

			tvp.push(HELMET)
			n_prize = Prize.new(1,1)
			n_bad= BadConsequence.newKind("Embobados con el linfo primigenio te descartas de tu casco visible.", 0, tvp, top)
			@unusedMonster.push(Monster.new("Chibithulu", 2, n_bad, n_prize))
			tvp.clear

			tvp.push(SHOE)
			n_prize = Prize.new(1,1)
			n_bad= BadConsequence.newKind("El primordial bostezo contagioso.Pierdes el calzado visible.", 0, tvp, top)
			@unusedMonster.push(Monster.new("El sopor de Dunwich", 2, n_bad, n_prize))
			tvp.clear

			tvp.push(ONEHAND)
			top.push(ONEHAND)
			n_prize = Prize.new(4,1)
			n_bad= BadConsequence.newKind("Te atrapan para llevarte de fiesta y te dejan caer en la mitad del vuelo. Descarta 1 mano visible y 1 mano oculta.", 0, tvp, top)
			@unusedMonster.push(Monster.new("Angeles de la noche ibicenca", 14, n_bad, n_prize))
			tvp.clear
			top.clear

			n_prize = Prize.new(3,1)
			#Todos los tesoros visibles con 999
			n_bad= BadConsequence.newTreasures("Pierdes todos tus tesoros visibles.", 0, 999, 0)
			@unusedMonster.push(Monster.new("El gorron en el umbral", 10, n_bad, n_prize))
			tvp.clear

			tvp.push(ARMOR)
			n_prize = Prize.new(2,1)
			n_bad= BadConsequence.newKind("Pierdes la armadura visible.", 0, tvp, top)
			@unusedMonster.push(Monster.new("H.P. Munchcraft", 6, n_bad, n_prize))
			tvp.clear

			tvp.push(ARMOR)
			n_prize = Prize.new(1,1)
			n_bad= BadConsequence.newKind("Sientes bichos bajo la ropa descarta la armadura visible.", 0, tvp, top)
			@unusedMonster.push(Monster.new("Bichgooth", 2, n_bad, n_prize))
			tvp.clear

			n_prize = Prize.new(4,2)
			n_bad= BadConsequence.newTreasures("Pierdes 5 niveles y 3 tesoros visibles.", 5, 3, 0)
			@unusedMonster.push(Monster.new("El rey de rosa", 13, n_bad, n_prize))

			n_prize = Prize.new(1,1)
			n_bad= BadConsequence.newTreasures("Tose los pulmones y pierdes 2 niveles.", 2, 0, 0)
			@unusedMonster.push(Monster.new("La que cose en las sombras", 13, n_bad, n_prize))

			n_prize = Prize.new(2,1)
			n_bad= BadConsequence.newDeath("Estos monstruos resultan bastante superficiales y te aburren mortalmente. Estas muerto.", true)
			@unusedMonster.push(Monster.new("Los hondos verdes", 7, n_bad, n_prize))

			n_prize = Prize.new(2,1)
			n_bad= BadConsequence.newTreasures("Pierdes 2 niveles y 2 tesoros ocultos.", 2, 0, 2)
			@unusedMonster.push(Monster.new("Semillas Cthulhu", 4, n_bad,n_prize))

			tvp.push(ONEHAND)
			n_prize = Prize.new(2,1)
			n_bad= BadConsequence.newKind("Te intentas escaquear. Pierdes una mano visible.", 0, tvp, top)
			@unusedMonster.push(Monster.new("Dameargo", 1, n_bad, n_prize))
			tvp.clear

			n_prize = Prize.new(1,1)
			n_bad= BadConsequence.newTreasures("Da mucho asquito. Pierdes 3 niveles.", 3, 0, 0)
			@unusedMonster.push(Monster.new("Pollipolipo volante", 3, n_bad, n_prize))

			n_prize = Prize.new(3,1)
			n_bad= BadConsequence.newDeath("No le hace mucha gracia que pronuncien mal si nombre. Estas muerto", true)
			@unusedMonster.push(Monster.new("Yskhtihyssg-Goth", 12, n_bad, n_prize))

			n_prize = Prize.new(4,1)
			n_bad= BadConsequence.newDeath("La familia te atrapa. Estas muerto.", true)
			@unusedMonster.push(Monster.new("Familia feliz", 1, n_bad, n_prize))

			tvp.push(BOTHHANDS)
			n_prize = Prize.new(2,1)
			n_bad= BadConsequence.newKind("La quinta directiva primaria te obliga a perder 2 niveles y un tesoro 2 manos visible", 0, tvp, top)
			@unusedMonster.push(Monster.new("Roboggoth", 8, n_bad, n_prize))
			tvp.clear

			tvp.push(HELMET)
			n_prize = Prize.new(1,1)
			n_bad= BadConsequence.newKind("Te asusta en la noche. Pierdes un casco visible", 0, tvp, top)
			@unusedMonster.push(Monster.new("El espia ciego", 4, n_bad, n_prize))
			tvp.clear

			n_prize = Prize.new(1,1)
			n_bad= BadConsequence.newTreasures("Menudo suste te llevas. Pierdes 2 niveles y 5 tesoros visibles", 2, 5, 0)
			@unusedMonster.push(Monster.new("El lenguas", 20, n_bad, n_prize))

			tvp.push(BOTHHANDS)
			tvp.push(ONEHAND)
			n_prize = Prize.new(1,1)
			n_bad= BadConsequence.newKind("Te faltan manos para tanta cabeza. Pierdes 3 niveles y tus tesoros visibles de las manos", 3, tvp, top)
			@unusedMonster.push(Monster.new("Bicefalo", 20, n_bad, n_prize))
			tvp.clear
    end

    def shuffleTreasures()
    end

    def shuffleunusedMonster()
    end

    public

    def nextTreasure()
    end

    def nextMonster()
    end

		#treasure
    def giveTreasureBack(t)
    end

		#monster
    def giveMonsterBack(m)
    end

    def initCards()
			initTreasureCardDeck
			initMonsterCardDeck
    end
	end #CardDealer
end #Napakalaki (module)
