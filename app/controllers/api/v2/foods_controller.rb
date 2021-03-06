class Api::V2::FoodsController < ApplicationController
  def index
    @foods = Food.all
    render "index.json.jbuilder"
  end

  def show
    @food = Food.find_by(id: params[:id])
    render "show.json.jbuilder"
  end

  def create
    @food = Food.new(ingredient1: params[:ingredient1], ingredient2: params[:ingredient2], spice1: params[:spice1], spice1amount: params[:spice1amount], spice2: params[:spice2], spice2amount: params[:spice2amount])
    if @food.save
      render "show.json.jbuilder"
    else
      render json: { errors: @food.errors.full_messages }, status: 422
    end 
  end

  def update
    @food = Food.find_by(id: params[:id])
    #rather than assign_attributes to the following so that you can set the value for empty params and just update one attriubut
    @food.ingredient1 = params[:ingredient1] || @food.ingredient1
    @food.ingredient2 = params[:ingredient2] || @food.ingredient2      
    @food.spice1 = params[:spice1] || @food.spice1 
    @food.spice1amount =  params[:spice1amount] || @food.spice1amount
    @food.spice2 = params[:spice2] || @food.spice2
    @food.spice2amount = params[:spice2amount] || @food.spice2amount
    @food.save
    render "show.json.jbuilder"
  end

  def destroy
    @food = Food.find_by(id: params[:id])
    @food.delete
    redirect_to "/foods", status: 303
  end

end
