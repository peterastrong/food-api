# json.array! @foods.each do |food|
#   json.partial! 'food.json.jbuilder', food: food 
# end 

#or

json.array! @foods, partial: "food", as: :food 