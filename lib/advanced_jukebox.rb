#Here is the song hash you will be working with. Each key is a song name and each value is the location of it's mp3 file.
#make sure to edit the value of each key to replace < path to this directory >
#with the correct path to this directory on your computer

my_songs = {
"Go Go GO" => '/Users/JoyHuang/Development/code/jukebox-cli-dumbo-web-080618/audio/Emerald-Park/01.mp3',
"LiberTeens" => '/Users/JoyHuang/Development/code/jukebox-cli-dumbo-web-080618/audio/Emerald-Park/02.mp3',
"Hamburg" =>  '/Users/JoyHuang/Development/code/jukebox-cli-dumbo-web-080618/audio/Emerald-Park/03.mp3',
"Guiding Light" => '/Users/JoyHuang/Development/code/jukebox-cli-dumbo-web-080618/audio/Emerald-Park/04.mp3',
"Wolf" => '/Users/JoyHuang/Development/code/jukebox-cli-dumbo-web-080618/audio/Emerald-Park/05.mp3',
"Blue" => '/Users/JoyHuang/Development/code/jukebox-cli-dumbo-web-080618/audio/Emerald-Park/06.mp33',
"Graduation Failed" => '/Users/JoyHuang/Development/code/jukebox-cli-dumbo-web-080618/audio/Emerald-Park/07.mp3'
}

def help
  puts "I accept the following commands:\n
        - help : displays this help message\n
        - list : displays a list of songs you can play\n
        - play : lets you choose a song to play\n
        - exit : exits this program\n"
end



def list(my_songs)
  counter = 1
  my_songs.each do |song, path|
    puts "#{counter}. #{song}"
    counter += 1
  end
end


def play(my_songs)
  #this method is slightly different!
  #you should still ask the user for input and collect their song choice
  #this time, only allow user's to input a song name
  #check to see if the name they give is in fact a key of the my_songs hash
  #if it isn't, tell them their choice is invalid
  #if it is, play the song using the system 'open <file path>' syntax
  #get the file path of the song by looking it up in the my_songs hash
  puts "Please enter a song name: "
  response = gets.chomp
  if my_songs.keys.include?(response)
    system "open #{my_songs[response]}" 
    # puts "Playing #{response}"
  else
    puts "Invalid input, please try again."
  end

end

def exit_jukebox
  puts "Goodbye"
end

def run(my_songs)
  help
  response = ""
  while response != "exit"
    puts "Please enter a command:"
    response = gets.chomp
    case response
      when "help"
        help
      when "list"
        list(my_songs)
      when "play"
        play(my_songs)
      when "exit"
        exit_jukebox
        # break
      else
        puts "Invalid Command"
    end
  end
end
