#json.partial! 'food.json.jbuilder', food: @food
#or
json.partial! @food, partial: 'food', as: :food 