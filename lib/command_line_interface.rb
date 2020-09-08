# Define a `welcome` method that `puts` out a friendly greeting. 
# Then, define the `get_character_from_user` method to ask the user for a characters name and capture that input. 
# The return value of this method should be the captured user's input.

def welcome
  # puts out a welcome message here!
  puts "Welcome!"
end

def get_character_from_user
  puts "please enter a character name"
  return gets.chomp.downcase
  # use gets to capture the user's input. This method should return that input, downcased.
end
