# Add your code here
require 'pry'

def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(songs)
  songs.each_with_index {|item, index|
    puts "#{index + 1}. #{item}"
  }
end

def play(songs)
  puts "Please enter a song name or number:"
  users_input = gets.strip
  song_number =[]
  song_name = []
  songs.each_with_index do |item, index|
    song_number.push((index+1))
    song_name.push(item)
  end
  # binding.pry
  if song_number.include? (users_input.to_i)
    puts "Playing #{song_name[users_input.to_i-1]}"
  elsif song_name.include? (users_input)
    puts "Playing #{users_input}"
  else
    puts "Invalid input, please try again"
  end
  # if song_number.include? (users_input) && users_input.class == Integer
  #   puts "Playing #{song_name[users_input.to_i-1]}"
  # elsif song_name.include? (users_input) && users_input.class == String
  #   puts "Playing #{users_input.to_i}"
  # else
  #   puts "Invalid input, please try again"
  # end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  puts "Please enter a command:"
  user_input = gets.strip
  if user_input == "help"
    help
  elsif user_input == "list"
    list(songs)
  elsif user_input == "play"
    play(songs)
  elsif user_input == "exit"
    exit_jukebox
  end
end
