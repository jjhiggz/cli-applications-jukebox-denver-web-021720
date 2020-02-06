# Add your code here
require 'pry'
def say_hello(name)
  "Hi #{name}!"
end




 def help
 puts " I accept the following commands:"
 puts "- help : displays this help message"
 puts "- list : displays a list of songs you can play"
 puts "- play : lets you choose a song to play"
 puts "- exit : exits this program"
 end

def list(songs)
  i=0
  while i<songs.length
    puts "#{i+1}. #{songs[i]}"
    i+=1
  end
end

def play(songs)
puts "Please enter a song name or number:"
a=gets.strip

if a.to_i>=1
    "Playing #{songs[i]}"
else
  i=songs.index("#{a}")
    if i.class == Integer
    puts "Playing #{songs[i]}"
    else
    puts "Please enter a valid song"
    end
  end
end

def exit_jukebox()
  puts "Goodbye"
end

def run(songs)
  puts "Enter your name:"
  users_name = gets.strip
  puts say_hello(users_name)
  while true
    #binding.pry
  puts "Please enter a command:"
    user_input = gets.strip
      if user_input == 'exit'
        exit_jukebox()
        break
      elsif user_input=='help'
        help()
      elsif user_input=='list'
        list(songs)
      elsif user_input=='play'
        play(songs)
      else
        puts "Error, Invalid Input"
      end
  end
end
