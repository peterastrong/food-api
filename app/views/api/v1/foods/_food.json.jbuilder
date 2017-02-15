json.id food.id
json.first_ingredient food.ingredient1
json.second_ingredient food.ingredient2
if food.spice1.include?("Curry")
  json.first_spice food.spice1 + ": Are you making Indian or Jamaican food?"
else 
  json.first_spice food.spice1
end 
json.first_spice_amount food.spice1amount
json.second_spice food.spice2
json.second_spice_amount food.spice2amount