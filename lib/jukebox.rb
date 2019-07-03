require 'pry'
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


def help
  puts "I accept the following commands:
  - help : displays this help message
  - list    : displays the list of songs you can play
  - play    : lets you choose a song to play
  - exit    : exits the program"
end

def list(songs)
  songs.each do |song_name|
    puts "#{song_name}"
  end #of songs.each
end

def play(songs)
  puts 'Please enter a song name or number:'
  user_input = gets.chomp

  if user_input.to_i.is_a? Numeric
    int = user_input.to_i
    index = int - 1
    if index <= songs.size
    puts "Playing #{songs[index]}"
    end
  end

  if user_input.class == String
    if songs.include?(user_input)
      puts "Playing #{user_input}"
    end
  end

  puts "Invalid input, please try again"
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  puts "Please enter a command:"
  userCommand = gets.chomp

  while userCommand != 'exit'

    case userCommand
    when 'list'
      puts list(songs)
    when 'play'
      play(songs)
    when 'help'
      help
    end #end of case control flow

    puts "Please enter a command:"
    userCommand = gets.chomp
  end # end of while loop

  exit_jukebox
end #end of function
