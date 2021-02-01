$LOAD_PATH.unshift File.expand_path(".", "lib") #add ./lib to the load path

require 'sinatra'
require 'fibonacci'

set :app_file, __FILE__

get '/fibonacci/:value' do |value|
    fibonacci = Calculations::Fibonacci.new
    begin
        convertedValue = Integer(value)
        "fibonacci sequence for #{value} is #{fibonacci.sequence(convertedValue)}"
    rescue ArgumentError => exception
        "ArgumentError: #{exception}"
    end
end

get '/fibonacci/golden_ratio/:value' do |value|
    fibonacci = Calculations::Fibonacci.new
    begin
        convertedValue = Integer(value)
        "fibonacci sequence for #{value} is #{fibonacci.golden_ratio(convertedValue)}"
    rescue ArgumentError => exception
        "ArgumentError: #{exception}"
    end
end


