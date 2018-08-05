require 'sinatra'
require 'colorize'
require './myclasses.rb'

# :name, :describe, :photo , :price
cookie_1 = Cookie.new('Chocolate Chip','A description','images/chocolate_chip','$4')
cookie_2 = Cookie.new('White Chocolate','A description','images/chocolate_chip','$5')
cookie_3 = Cookie.new('Oatmeal','A description','images/chocolate_chip','$6')

get "/" do
    @cookie_1 = cookie_1
    @cookie_2 = cookie_2
    @cookie_3 = cookie_3
    erb :test
end