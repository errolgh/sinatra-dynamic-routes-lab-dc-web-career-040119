require 'pry'
require_relative 'config/environment'
#app.rb should really be the 'controllers folder'.
class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @reversed_name = params[:name]
    "#{@reversed_name.reverse}"
  end

  #I needed to create an instance of a reversed name and set it equal to the URL parameter's name value. the URL parameter ":name" was the key, and the input from the user into the URL is the "value."

  #The `.reverse` method was then used inside of the interpolated string (the string is rendered directly onto the page without an erb file) which contained the variable `@reversed_name` which was set equal to the URL parameter "errol"


  get '/square/:number' do
    @square = params[:number].to_i
    #here i had to set an instance variable `@square` equal to our params value `:number`. BUT ALSO, we can't do math with strings. So for the sake of the next line of uncommented code, we needed to convert `@square`'s value from a string into an integer using `.to_i`.
    squared_int = @square * @square
    #set a new variable, execute the variable in an interpolated string...
    "#{squared_int}"
    #this value then becomes a string, because our browser will not see our integer from a bare ruby line of code.
  end

  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase]
        @number.times do
          @phrase
      end
  end

  









end #class `end`
