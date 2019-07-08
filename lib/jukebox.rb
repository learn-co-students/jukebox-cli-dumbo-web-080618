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
  puts "I accept the following commands:\n
        - help : displays this help message\n
        - list : displays a list of songs you can play\n
        - play : lets you choose a song to play\n
        - exit : exits this program\n"
end

def play(songs)
  puts "Please enter a song name or number: "
  response = gets.chomp
  num = response.to_i
  if songs.include?(response)
    puts "Playing #{response}"
  elsif  num <= songs.length && num > 0
      puts "Playing #{songs[response.to_i - 1]}"
  else
    puts "Invalid input, please try again."
  end
end

def list(songs)
  songs.each_with_index do |song, i|
    puts "#{i+1}. #{song}"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  response = ""
  while response != "exit"
    puts "Please enter a command:"
    response = gets.chomp
    case response
      when "help"
        help
      when "list"
        list(songs)
      when "play"
        play(songs)
      when "exit"
        exit_jukebox
        # break
      else
        puts "Invalid Command"
    end
  end
end
