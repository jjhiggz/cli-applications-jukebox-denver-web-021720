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
###binding.pry
if a.to_i>=1 && a.to_i<=songs.length
    puts "Playing #{songs[a.to_i-1]}"

else
  i=songs.index("#{a}")
    if i.class == Integer
    puts "Playing #{songs[i]}"
    else
    puts "Invalid input, please try again"
    end
  end
end


def exit_jukebox()
  puts "Goodbye"

end

def run(songs)
#puts "Please enter a command:"
  #users_name = gets.strip
  puts "Please enter your name:"
      users_name=gets.strip
  puts say_hello(users_name)
  while true
  puts "I accep the following commands:"
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
