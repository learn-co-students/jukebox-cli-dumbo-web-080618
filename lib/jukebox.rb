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
  songs.each_with_index { |name, index|
    puts "#{index+1}. #{name}"
  }
end

def play(songs)
  puts 'Please enter a song name or number:'
  user_input = gets.chomp
  if songs.include?(user_input)
    puts "Playing #{user_input}"
  elsif
    user_input.to_i.between?(1,9)
      puts "Playing #{songs[user_input.to_i-1]}"
  else
    puts 'Invalid input, please try again'
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  loop do
    puts "Please enter a command:"
    user_response = gets.downcase.chomp
    case user_response
    when "exit"
      exit_jukebox
      break
    when "list"
      list(songs)
    when "play"
      play(songs)
    when "help"
      help
    else
      help
    end
  end
end
