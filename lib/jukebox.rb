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
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program"
end

def list(songs)
  songs.each_with_index {|song, i| puts "#{i+1}. #{song}"}
end

def play(songs)
  puts "Please enter a song name or number:"
  choice = gets.chomp
    songs.each_with_index do |track, i|
    if track.include?(choice) 
      puts "Playing #{track}"
    elsif choice.to_i == i + 1 
      puts "Playing #{track}"
    else 
    puts "Invalid input, please try again" 
    end
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs) 
  help
  
  command = "" 
  until command.downcase == "exit" 
  puts "Please enter a command:"
  command = gets.chomp
    if command.downcase == "list"
      list(songs)
      command = gets.chomp 
    elsif command.downcase == "play"
    play(songs)
    command = gets.chomp 
    elsif command.downcase == "help"
    help
    command = gets.chomp 
    elsif command.downcase == "exit"
    exit_jukebox
    end
  end
end
  

