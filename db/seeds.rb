# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#   
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Major.create(:name => 'Daley', :city => cities.first)




def build(filename)
  File.open(filename, 'r') do |file|
    file.each_line do |ingredient|
      #print_ingredient(ingredient.chomp)
      add_ingredient(ingredient.chomp)
    end
  end
end

private

def print_ingredient(ingredient)
 properties = Array.new
  ingredient.each('^') do |string|
    properties << string.chop.gsub(/~/, '')
  end

  h = {
    :Shrt_Desc => properties[1],
    :Energ_Kc => properties[3],
    :Protein => properties[4],
    :Lipid_Tot => properties[5],
    :Fiber_TD => properties[8],
    :Sugar_Tot => properties[9],
    :Calcium => properties[10],
    :Iron => properties[11],
    :Sodium => properties[15],
    :FA_Sat => properties[44],
    :Cholestrl => properties[47],
    :GmWt_1 => properties[48],
    :GmWt_Desc1 => properties[49] 
  }


puts "#{h[:Shrt_Desc]} #{h[:Energ_Kc]} #{h[:Protein]} #{h[:Lipid_Tot]} #{h[:Fiber_TD]} #{h[:Sugar_Tot]} #{h[:Calcium]} #{h[:Iron]} #{h[:Sodium]} #{h[:FA_Sat]} #{h[:Cholestrl]} #{h[:GmWt_1]} #{h[:GmWt_Desc1]} \n--"

end





def add_ingredient(ingredient)
  properties = Array.new
  ingredient.each('^') do |string|
    properties << string.chop.gsub(/~/, '')
  end
  Ingredient.create (
    :Shrt_Desc => properties[1],
    :Energ_Kc => properties[3],
    :Protein => properties[4],
    :Lipid_Tot => properties[5],
    :Fiber_TD => properties[8],
    :Sugar_Tot => properties[9],
    :Calcium => properties[10],
    :Iron => properties[11],
    :Sodium => properties[15],
    :FA_Sat => properties[44],
    :Cholestrl => properties[47],
    :GmWt_1 => properties[48],
    :GmWt_Desc1 => properties[49]  )
end


build("db/ABBREV.txt")

