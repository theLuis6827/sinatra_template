class FoodsController < ApplicationController
    set :method_override, true

    # index of all foods 
    get '/foods' do 
        @foods = Food.all
        erb :'food/index'
    end

    # create a new Food 
    get '/foods/new' do 
        # we are going to have to create an erb file
        @foods = Food.all
        erb :'food/new'
    end

    # after user inputs some data
    post '/foods' do
        # we can access info from form through params
        # create a food 
        @foods = Food.create(params) 
        redirect "/restaurants/#{@foods.restaurant_id}"
    end

end