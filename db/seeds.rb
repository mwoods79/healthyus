# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#   
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Major.create(:name => 'Daley', :city => cities.first)

# Pass an abbreviated sr22 to this method.  This will save the wanted properties to the database.
def build(filename)
  File.open(filename, 'r') do |file|
    file.each_line do |ingredient|
      #print_ingredient(ingredient.chomp)
      add_ingredient(ingredient.chomp)
    end
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

  puts "#{h[:Shrt_Desc]} #{h[:Energ_Kc]} #{h[:Protein]} #{h[:Lipid_Tot]} #{h[:Fiber_TD]} #{h[:Sugar_Tot]} #{h[:Calcium]} #{h[:Iron]} #{h[:Sodium]} #{h[:FA_Sat]} #{h[:Cholestrl]} #{h[:GmWt_1]} #{h[:GmWt_Desc1]} \n--"

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