#!/usr/bin/ruby
# coding: utf-8

defeat = {
	:piedra => 'tijeras',
	:papel => 'piedra',
	:tijeras => 'papel'
}
# puts defeat[:papel]  # => "piedra"

throws = defeat.keys #en el array throws guardamos las claves
#ARGV Returns the ARGV array.  shift devuelve un array con 1er elemnto, o nil si vacío
player_throw = (ARGV.shift || throws.sample).to_sym #convertimos a un símbolo string

computer_throw = throws.sample

if player_throw == computer_throw
	puts "Empate"; puts computer_throw
elsif player_throw == defeat[computer_throw]
	puts "Gana Maquina"
	print "Ordenador: "; puts computer_throw
	print "Jugador: "; puts player_throw
else
	puts "Gana Jugador"
	print "Ordenador: "; puts computer_throw
	print "Jugador: "; puts player_throw
end

