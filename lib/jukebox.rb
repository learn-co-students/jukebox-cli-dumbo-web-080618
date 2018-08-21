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
#  "Hi #{name}!"
# end
#
# puts "Enter your name:"
# users_name = gets.chomp
#
# puts say_hello(users_name)

def help
  puts "I accept the following commands:"
  puts "- help - displays commands"
  puts "- list - displays a list of songs you can play"
  puts "- play - command to play a song"
  puts "- exit - exits out of program"
end

def list(songs)
  songs.each_with_index do |song, index|
    puts "#{index+1}. #{song}"
  end
end

def play(songs)
  puts "Please enter a number:"
  num = gets.chomp.to_i
  while (0..songs.size).include?(num) == false
    puts "Invalid input, please try again."
    puts "Please enter a number:"
    num = gets.chomp.to_i
  end
  puts "Playing #{songs[num-1]}"
end

def exit_jukebox
  puts "Goodbye."
end

def run(songs)
  prompt = "Please enter a command:"

  puts "What up."
  puts prompt
  help
  puts prompt
  input = gets.chomp
  while input != "exit"
    if input == "help"
      help
      puts prompt
      input = gets.chomp
    elsif input == "list"
      list(songs)
      puts prompt
      input = gets.chomp
    elsif input == "play"
      play(songs)
      puts prompt
      input = gets.chomp
    else
      puts "Please enter a valid command"
      input = gets.chomp
    end
  end
  exit_jukebox
end
