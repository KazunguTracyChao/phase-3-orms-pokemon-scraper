require_relative "environment"

Scraper.new(@db).scrape

all_pokemon = @db.execute("SELECT * FROM pokemon;")

# test out your code here!

all_pokemon.each do |row|
    id = row[0]
    name = row[1]
    type = row[2]
    puts "Pokemon ID: #{id}, Name: #{name}, Type: #{type}"
  end
  