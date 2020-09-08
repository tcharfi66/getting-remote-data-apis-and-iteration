require 'rest-client'
require 'json'
require 'pry'

def get_character_movies_from_api(character_name) #return array of hashes (each hash is a movie)
  #make the web request

  #This array of hashes is what gets passed to the `print_movies` method. 
  #This is the method in which you will iterate over that array of hashes to `puts` out movie information to the terminal.


  response_string = RestClient.get('http://swapi.dev/api/people')
  response_hash = JSON.parse(response_string)

    api_urls = [] 
    
  response_hash.each do |character|
   if character[:name] == character_name
      api_url << character[:films]
   end


   #make web request with each element from api_url 

  end

  # iterate over the response hash to find the collection of `films` for the given
  #   `character`

  # collect those film API urls, make a web request to each URL to get the info
  #  for that film
  # return value of this method should be collection of info about each film.
  #  i.e. an array of hashes in which each hash reps a given film
  # this collection will be the argument given to `print_movies`
  #  and that method will do some nice presentation stuff like puts out a list
  #  of movies by title. Have a play around with the puts with other info about a given film.
end

def print_movies(films)
  # some iteration magic and puts out the movies in a nice list
end

def show_character_movies(character)
  films = get_character_movies_from_api(character)
  print_movies(films)
end

## BONUS

# that `get_character_movies_from_api` method is probably pretty long. Does it do more than one job?
# can you split it up into helper methods?
