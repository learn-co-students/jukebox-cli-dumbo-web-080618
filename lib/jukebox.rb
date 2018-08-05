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

#def say_hello(name)
#  "Hi #{name}!"
#end

#puts "Enter your name: "
#users_name = gets.chomp

#puts say_hello(users_name)

def help
   puts "
   I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program"
end

def list(songs)
  songs.each_with_index { |item, index|
  puts "#{index + 1}. #{item}"}
end

def play(songs)
  puts "Please enter a song name or number:"
  song_name = gets.chomp

  if songs.include?(song_name)
    puts "Playing #{song_name}"
  elsif (1..9).to_a.include?(song_name.to_i)
    puts "Playing #{songs[song_name.to_i - 1]}"
  else
    puts "Invalid input, please try again."
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  puts "Please enter a command:"
  input = gets.chomp
  if input == "list"
    list
  elsif input == "play"
    play
  elsif input == "help"
    help
   elsif input == "exit"
    exit_jukebox
  end
end
