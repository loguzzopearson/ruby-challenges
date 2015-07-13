recipe_01 = {"title" => "Eggplant Curry", "diet" => "gluten free"}
recipe_02 = {"title" => "Beef Sticks", "diet" => "paleo"}
recipe_03 = {"title" => "Chicken Kiev", "diet" => "atkins"}

dinner = recipe_01["title"]
puts "We're eating #{dinner} tonight!"
 
recipe_01 = {title: "Eggplant Curry", diet: "gluten free"}
recipe_02 = {title: "Beef Sticks", diet: "paleo"}
recipe_03 = {title: "Chicken Kiev", diet: "atkins"}

dinner = recipe_01[:title]
puts "We're eating #{dinner} tonight!"
print recipe_01.assoc(:diet)