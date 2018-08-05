require 'sinatra'
require 'colorize'
require './myclasses.rb'

# :name, :describe, :photo , :price
cookie_1 = Cookie.new('Chocolate Chip','A description','images/chocolate_chip','$4')
cookie_2 = Cookie.new('White Chocolate','A description','images/chocolate_chip','$5')
cookie_3 = Cookie.new('Oatmeal','A description','images/chocolate_chip','$6')



get "/" do
   "I AM THE GREATEST"
end

get "/cookies" do
    @cookie_1 = cookie_1
    @cookie_2 = cookie_2
    @cookie_3 = cookie_3
    
    erb :cookie
end


cake_1 = Cake.new('Chocolate', 'A description','images/chocolate_chip','$10')
cake_2 = Cake.new('Ice Cream', 'A description','images/chocolate_chip','$12')
cake_3 = Cake.new('Cheesecake', 'A description','images/chocolate_chip','$14')

get "/cakes" do
    @cake_1 = cake_1
    @cake_2 = cake_2
    @cake_3 = cake_3
    erb :cake
end

muffin_1 = Muffin.new('Blueberry','A description','images/chocolate_chip','$4')
muffin_2 = Muffin.new('Chocolate','A description','images/chocolate_chip','$4')
muffin_3 = Muffin.new('Strawberry', 'A description','images/chocolate_chip','$14')

get "/muffins" do
    @muffin_1 = muffin_1
    @muffin_2 = muffin_2
    @muffin_3 = muffin_3
    erb :muffin
end