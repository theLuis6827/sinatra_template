class RestaurantsController < ApplicationController
    set :method_override, true

    get '/restaurants' do 
        @restaurant = Restaurant.all
        erb :'res/index'
    end

    get '/restaurants/:id' do
        @restaurant = Restaurant.find(params[:id])
        erb :'res/show'
    end

    get '/create_restaurant' do
        erb :'res/create_restaurant'
    end

    post '/restaurants' do
        @restaurant = Restaurant.create(name: params['restaurant_name'], category: params['restaurant_category'])
        redirect "/restaurants/#{@restaurant.id}"
    end

    get '/restaurants/:id/edit' do 
        @restaurant = Restaurant.find(params[:id])
        erb :'res/edit'
    end

    patch '/restaurants/:id' do
        @restaurant = Restaurant.find(params[:id])
        @restaurant.update(name: params['restaurant_name'],  category: params['restaurant_category'])

        erb :'res/show' 
    end

    delete '/restaurants/:id' do
        @restaurant = Restaurant.find(params[:id])
        @restaurant.destroy
        redirect "/restaurants"
    end

end