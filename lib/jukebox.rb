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
  puts "I accept the following commands:\n
  -help : displays this help message\n
  -list : displays a list of songs you can play\n
  -play : lets you choose a song to play\n
  -exit : exit exits this program"
end

def list (tracks)
  tracks.each_with_index{ |name, index|
    puts "#{index+1}. #{name}"}
end

def play (tracks)
  puts "Please enter a song name or number:"
  response = gets.chomp 
  track = ""
  case response
  when "Phoenix - 1901" , "1"
    track =  "Playing #{tracks[0]}"
  when "Tokyo Police Club - Wait Up", "2"
    track =  "Playing #{tracks[1]}"
  when "Sufjan Stevens - Too Much", "3"
    track =  "Playing #{tracks[2]}"
  when "The Naked and the Famous - Young Blood", "4"
    track =  "Playing #{tracks[3]}"
  when "(Far From) Home - Tiga", "5"
    track =  "Playing #{tracks[4]}"
  when "The Cults - Abducted", "6"
    track =  "Playing #{tracks[5]}"
  when "Phoenix - Consolation Prizes", "7"
    track =  "Playing #{tracks[6]}"
  when "Harry Chapin - Cats in the Cradle","8"
    track =  "Playing #{tracks[7]}"
  when "Amos Lee - Keep It Loose, Keep It Tight",  "8"
    track =  "Playing #{tracks[8]}"
  else
    track = "Invalid input, please try again"
  end
  puts track
end

def exit_jukebox
  puts "Goodbye"
end

def run (tracks)
  help
  puts "Please enter a command: "
  user_input = gets.chomp
  until user_input == "exit"
    case user_input
      when "help"
        help
      when "list"
        list (tracks)
      when "play"
        play (tracks)
    end
  end
  exit
end