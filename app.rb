require 'sinatra'
require 'colorize'
require './myclasses.rb'
require 'sinatra/reloader'


# :name, :describe, :photo , :price
cookie_1 = Cookie.new('Chocolate Chip','Magically Delicious','img/cookie.jpg','$4')
cookie_2 = Cookie.new('White Chocolate','Magically Delicious','img/whitecookie.jpeg','$4')
cookie_3 = Cookie.new('Oatmeal','Magically Delicious','img/oatcookie.jpg','$5')



get "/" do
   erb :home
end

# get "/home" do
#     erb :home
#  end

get "/cookies" do
    @cookie_1 = cookie_1
    @cookie_2 = cookie_2
    @cookie_3 = cookie_3
    @all_cookies = [@cookie_1,cookie_2,cookie_3]
    erb :cookie
end


cake_1 = Cake.new('Carrot Cake', 'Magically Delicious','img/cake.jpg','$22')
cake_2 = Cake.new('Chocolate Cake', 'Magically Delicious','img/chococake.png','$18')
cake_3 = Cake.new('Red Velvet', 'Magically Delicious','img/velvet.jpg','$20')

get "/cakes" do
    @cake_1 = cake_1
    @cake_2 = cake_2
    @cake_3 = cake_3
    @all_cakes = [@cake_1,@cake_2,@cake_3]
    erb :cake
end

muffin_1 = Muffin.new('Blueberry','Magically Delicious','img/bmuffin.jpg','$5')
muffin_2 = Muffin.new('Chocolate',' Magically Delicious','img/chocmuffin.jpg','$3')
muffin_3 = Muffin.new('Strawberry', 'Magically Delicious','img/strawmuffin.jpg','$4')

get "/muffins" do
    @muffin_1 = muffin_1
    @muffin_2 = muffin_2
    @muffin_3 = muffin_3
    @all_muffins = [@muffin_1,@muffin_2,@muffin_3]
    erb :muffin
end




# get "/recipes" do

# end