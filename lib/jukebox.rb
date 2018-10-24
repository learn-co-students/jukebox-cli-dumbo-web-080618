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
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end


def list(songs)
  songs.each_with_index {|song,idx| puts "#{idx + 1}. #{song}"}
end
  
def play(songs)
  puts "Please enter a song name or number:"
  input = gets.chomp
  if input.to_i.between?(1,9)
    idx = input.to_i - 1
    puts "Playing #{songs[idx]}"
  
  elsif songs.include?(input)
    puts "Playing #{input}"
    
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end
  
def run(songs)
  help
  while true 
    puts "Please enter a command:"
    command = gets.chomp.downcase
    case command
      when "help"
        help
      when "list"
        list(songs)
      when "play"
        play(songs)
      when "exit"
        exit_jukebox
        break
      end
  end
end
  