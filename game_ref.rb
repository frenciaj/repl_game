require './game_methods.rb'

include GameMethods



access = "About"
system "clear"
puts "In order to play my game, i have a challenge for you first, grab your phone open your browser and go to www.google.com website and look
for the last word on the bottom of the page and type it to access.

Para poder acceder al juego, primero tienes una prueba que pasar, agarra tu telefono, abre el navegador en ingresa a www.google.com (Ingles)
Busca la ultima palabra del pie de pagina y tipeala para acceder."
input_access = gets.chomp.capitalize!
until input_access == access
  puts "NO NO NO...Keep trying"
  `afplay wrong.mp3`
  input_access = gets.chomp.capitalize!
end

# you ask the user to put his name, cut any spaces added by mistake and capitalize
puts "You nailed it! Please type your name?"
`afplay nailed.mp3`
name_input = gets.chomp.capitalize!
group_names(name_input)
lang_input = gets.chomp.downcase.strip
until lang_input == "eng" || lang_input == "spa"
  puts "Type ENG for English, or SPA for spanish and press enter / Presiona ENG para Ingles o SPA para espanol y presiona Enter"
  lang_input = gets.chomp.downcase
end
if lang_input == "eng"
  game_eng(lang_input)
else
  game_spa(lang_input)
end
