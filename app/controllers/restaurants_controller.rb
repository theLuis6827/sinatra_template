class RestaurantsController < Sinatra::Base
    set :method_override, true
    set :views, "app/views/restaurants"

    get '/restaurants' do 
        @restaurant = Restaurant.all
        erb :index
    end

    get '/restaurants/:id' do
        @restaurant = Restaurant.find(params[:id])
        erb :show
    end

    get '/create_restaurant' do
        erb :create_resaurant
    end

    post '/restaurants' do
        @restaurant = Restaurant.create(name: params['restaurant_name'], category: params['restaurant_category'])
        redirect "/restaurants/#{@restaurant.id}"
    end

    get '/restaurants/:id/edit' do 
        @restaurant = Restaurant.find(params[:id])
        erb :edit
    end

    patch '/restaurants/:id' do
        @restaurant = Restaurant.find(params[:id])
        @restaurant.update(name: params['restaurant_name'],  category: params['restaurant_category'])

        erb :show 
    end

    delete '/restaurants/:id' do
        @restaurant = Restaurant.find(params[:id])
        @restaurant.destroy
        redirect "/restaurants"
    end

end