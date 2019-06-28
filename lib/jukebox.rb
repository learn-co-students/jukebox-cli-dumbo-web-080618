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

#def say_hello(name)
#  "Hi #{name}!"
#end
# 
#puts "Enter your name:"
#users_name = gets.chomp
# 
#puts say_hello(users_name)

def help 
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(songs)
  songs.each_with_index do |song, index|
    puts "#{index+1}. #{song}"
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  user_response = gets.chomp
  if songs.include?(user_response)
    puts "Playing #{user_response}"
  elsif user_response.to_i <= songs.length && user_response.to_i > 0
    puts "Playing #{songs[(user_response.to_i)-1]}"
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(my_songs)
  help
  user_response = ""
  loop do
    puts "Please enter a command:"
    user_response = gets.strip
    if user_response == "help"
      help
    elsif user_response == "list"
      list(my_songs)
    elsif user_response == "play"
      play(my_songs)
    elsif user_response == "exit"
    exit_jukebox
      break
    else
      puts "Invalid command, please try again"
    end
  end
end 