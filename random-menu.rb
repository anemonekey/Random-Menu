# User input on number of items that will be generated
print "\n----- Welcome to RandPal's American Stackhouse! -----
\r☆ Hope you're hungry as hippos, friend ☆ \n"
puts "\nHow many items do you want to eat? (Up to 10)"
create = gets.chomp.to_i

# Random numbered arrays for each food-related array
random_one = []
until random_one.length == create
  num1 = rand(create)
  random_one << num1 unless random_one.include? num1
end
random_two = []
until random_two.length == create
  num2 = rand(create)
  random_two << num2 unless random_two.include? num2
end
random_three = []
until random_three.length == create
  num3 = rand(create)
  random_three << num3 unless random_three.include? num3
end

# Check for valid number of items and then choose route
if create > 0 && create <= 10
  print "\nDo you want to
  \r1. Customize then randomize your own menu (OR)
  \r2. Receive and dine on a random selection?
  \r(Press 1 or 2 to choose)\n"
  route = gets.chomp.to_i
  if route == 1
    # User generation arrays (empty)
    user_adj = []
    user_sty = []
    user_foo = []
    # Loop creation of items in user arrays
    create.times do |n|
      puts "\nEnter a food."
      food = gets.chomp.split.map(&:capitalize).join(' ')
      user_foo << food
      puts "How do you want that cooked?"
      cooked = gets.chomp.split.map(&:capitalize).join(' ')
      user_sty << cooked
      puts "How would you describe that food?"
      adj = gets.chomp.split.map(&:capitalize).join(' ')
      user_adj << adj
    end
    # Print user menu items (randomized)
    puts "\nHere's your deeee-licious menu, buddy!"
    puts "Ain't no room for regrets now.\n\n"
    create.times do |n|
      puts "#{n+1}. #{user_adj[random_one[n]]} #{user_sty[random_two[n]]} #{user_foo[random_three[n]]}"
    end
  elsif route == 2
    puts "\nEnjoy it, little ranger!\n\n"
    # Premade food-related menu generator arrays
    adjectives = [ "sizzling", "sticky", "tender", "delicate", "low-fat", "homemade", "creamy", "spicy", "savory", "fresh" ]
    styles = [ "steamed", "pan-fried", "grilled", "slow-cooked", "marinated", "poached", "roasted", "stuffed", "baked","pickled" ]
    foods = [ "chicken wings", "filet mignon", "pizza", "burrito", "casserole", "pasta", "pancakes", "pork skewers", "cheeseburger", "lasagna" ]
    # Print random menu generator text
    create.times do |n|
      puts "#{n+1}. #{adjectives[random_one[n]].split.map(&:capitalize).join(' ')} #{styles[random_two[n]].split.map(&:capitalize).join(' ')} #{foods[random_three[n]].split.map(&:capitalize).join(' ')}"
    end
  else
    puts "That won't work here, pardner. Stop by again, ya hear?"
  end
else
  puts "Afraid we can't accodomate that, pal. Next time."
end
