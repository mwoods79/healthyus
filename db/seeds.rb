# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#   
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Major.create(:name => 'Daley', :city => cities.first)


# Takes a '^' delimted line from the SR ASCII files and parses data into an array
def process_line(line)
  line.split("^").map do |field|
    field.gsub(/~/, '').chomp
  end
end

# Setup two hash tables that store the id of the item created for the 
# FoodNutrient join table.
food_id_map = {}
nutrient_id_map = {}
group_id_map = {}

# Start the timer
start = Time.now

puts "> Importing Nutrients" # ------------------------------------ NUTRIENTS --
count = 0
File.open("#{RAILS_ROOT}/db/nutrition/NUTR_DEF.txt", "r") do |file|
  while line = file.gets
    nutrient = process_line(line)
    nutrient_id_map[ nutrient[0].to_sym ] = Nutrient.create(
      :name => nutrient[3],
      :units => nutrient[1],
      :position => nutrient[5]
    ).id
    STDOUT.write("#{count}...") && STDOUT.flush if (count += 1) % 1000 == 0
  end
end

puts "\n> Importing Food Groups" # -------------------------------- FOOD GROUPS --
count = 0
File.open("#{RAILS_ROOT}/db/nutrition/FD_GROUP.txt", "r") do |file|
  while line = file.gets
    group = process_line(line)
    group_id_map[ group[0].to_sym ] = FoodGroup.create( 
      :name => group[1]
    ).id
    STDOUT.write("#{count}...") && STDOUT.flush if (count += 1) % 1000 == 0
  end
end

puts "\n> Importing Foods" # ------------------------------------------ FOODS --
count = 0
File.open("#{RAILS_ROOT}/db/nutrition/FOOD_DES.txt", "r") do |file|
  while line = file.gets
    food = process_line(line)
    food_id_map[ food[0].to_sym ] = Food.create(
      :group_id => group_id_map[ food[1].to_sym ], 
      :description => food[2],
      :common_names => food[4],
      :manufacturer => food[5],
      :refuse_percentage => food[8],
      :refuse_description => food[7],
      :nitrogen_factor => food[10],
      :protein_factor => food[11],
      :fat_factor => food[12],
      :carb_factor => food[13]
    ).id
    STDOUT.write("#{count}...") && STDOUT.flush if (count += 1) % 1000 == 0
  end
end

puts "\n> Importing Food Weights" # --------------------------------- WEIGHTS --
count = 0
File.open("#{RAILS_ROOT}/db/nutrition/WEIGHT.txt", "r") do |file|
  while line = file.gets
    weight = process_line(line)
    CommonWeight.create(
      :food_id => food_id_map[ weight[0].to_sym ],
      :position => weight[1],
      :amount => weight[2],
      :description => weight[3],
      :weight => weight[4]
    )
    STDOUT.write("#{count}...") && STDOUT.flush if (count += 1) % 1000 == 0
  end
end

puts "\n> Importing Food-Nutrient Relationship" # ---------- FOOD / NUTRIENTS --
count = 0
File.open("#{RAILS_ROOT}/db/nutrition/NUT_DATA.txt", "r") do |file|
  while line = file.gets
    food_nutrient = process_line(line)
    FoodNutrient.create(
      :food_id => food_id_map[ food_nutrient[0].to_sym ],
      :nutrient_id => nutrient_id_map[ food_nutrient[1].to_sym ],
      :amount => food_nutrient[2]
    )
    STDOUT.write("#{count}...") && STDOUT.flush if (count += 1) % 1000 == 0
  end
end

# Compute the time taken
finished = (Time.now - start) / 60

# How long it took to screen
puts "\n> Finished in #{finished.to_i} minutes."