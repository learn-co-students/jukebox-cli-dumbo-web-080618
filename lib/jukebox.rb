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
  songs.each_with_index do |song, idx|
    puts "#{idx+1}." + song
  end
end

def play(songs)
  puts "Please enter a song name or number"
   song_d = gets.chomp
  songs.each_with_index do |song, idx|
    if song_d == song.to_s 
      puts "Playing #{song}"
    elsif song_d.to_i == idx+1
      puts "PLaying #{song}"
    else
      puts "Invalid input, please try again"
   end
  end
end

def exit_jukebox
  puts "Goodbye"  
end 

def run(songs)
puts "Please enter a command:"
  user_i = gets.chomp
  
  while user_i != "exit"
      if user_i == "help"
        help
        user_i = gets.chomp
      elsif user_i == "play"
        play(songs)
        user_i = gets.chomp
      elsif user_i == "list"
        list(songs)
        user_i = gets.chomp
      else
        user_i = gets.chomp
    end
  end
  
exit_jukebox
end













