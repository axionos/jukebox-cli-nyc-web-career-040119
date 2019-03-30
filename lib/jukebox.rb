songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

# def say_hello(name)
#   "Hi #{name}!"
# end
#
# puts "Enter your name:"
# users_name = gets.chomp
#
# puts say_hello(users_name)

def help
  puts "I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program"
end

def list (songs)
  songs.each_with_index do |song, idx|
    puts "#{idx+1}. #{song}"
  end
end

def play (songs)
  puts "Please enter a song name or number:"
  input = gets.chomp
  number = input.to_i - 1

  if number >= 0 && songs[number]
    puts "Playing #{songs[number]}"
  elsif number < 0 && songs.include?(input)
    index = songs.index(input)
    puts "Playing #{songs[number]}"
  else
    puts "Invalid input, please try again"
  end
end



def exit_jukebox
    puts "Goodbye"
end
