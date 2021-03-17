class FoodsController < ApplicationController
    set :views, "app/views/foods"
    set :method_override, true

    # index of all foods 
    get '/foods' do 
        @foods = Food.all
        erb :index
    end

    # create a new Food 
    # get form 
    get '/foods/new' do 
        # we are going to have to create an erb file
        @foods = Food.all
        erb :new
    end

    # after user inputs some data
    post '/foods' do
        # we can access info from form through params
        # create a food 
        @foods = Food.create(params) 
        redirect "/restaurants/#{@foods.restaurant_id}"
    end

end