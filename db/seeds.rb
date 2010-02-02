# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#   
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Major.create(:name => 'Daley', :city => cities.first)

# Pass an abbreviated sr22 to this method.  This will save the wanted properties to the database.
def build(filename)
  count = 0
  File.open(filename, 'r') do |file|
    file.each_line do |ingredient|
      add_ingredient(ingredient.chomp)
      # I added this back so that we can see the seeds are working
      print_ingredient(ingredient.chomp)
      count += 1
    end
    puts "#{count} ingredients added to Database!"
  end
end

private

# Used for testing.  Prints the parsed ingredient to the screen.
def print_ingredient(ingredient)
 properties = Array.new
 ingredient.each('^') do |property|
   properties << property.chop.gsub(/~/, '')
 end

  h = {
    :name               =>   properties[1],
    :calories           =>   properties[3],
    :protein            =>   properties[4],
    :lipids             =>   properties[5],
    :fiber              =>   properties[8],
    :sugar              =>   properties[9],
    :calcium            =>   properties[10],
    :iron               =>   properties[11],
    :sodium             =>   properties[15],
    :saturated_fat      =>   properties[44],
    :cholesteral        =>   properties[47],
    :weight_in_grams    =>   properties[48],
    :weight_description =>   properties[49] 
  }

  puts "#{h[:name]} #{h[:calories]} #{h[:protein]} #{h[:lipids]} #{h[:fiber]} #{h[:sugar]} #{h[:calcium]} #{h[:iron]} #{h[:sodium]} #{h[:saturated_fat]} #{h[:cholestral]} #{h[:weight_in_grams]} #{h[:weight_description]} \n--"

end

# Parses a line from the abbreviated sr22 and saves the wanted properties to the database.
def add_ingredient(ingredient)
  properties = Array.new
  ingredient.each('^') do |property|
    properties << property.chop.gsub(/~/, '')
  end

  Ingredient.create (
    :name               =>   properties[1],
    :calories           =>   properties[3],
    :protein            =>   properties[4],
    :lipids             =>   properties[5],
    :fiber              =>   properties[8],
    :sugar              =>   properties[9],
    :calcium            =>   properties[10],
    :iron               =>   properties[11],
    :sodium             =>   properties[15],
    :saturated_fat      =>   properties[44],
    :cholesteral        =>   properties[47],
    :weight_in_grams    =>   properties[48],
    :weight_description =>   properties[49]  
  )

end

build("db/ABBREV.txt")