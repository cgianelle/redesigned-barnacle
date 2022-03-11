$LOAD_PATH.unshift File.expand_path(".", "lib") #add ./lib to the load path

require 'sinatra'
require 'fibonacci'

set :app_file, __FILE__

cache = Hash.new
fibonacci = Calculations::Fibonacci.new

get '/fibonacci/:value' do |value|
    begin
        convertedValue = Integer(value)
        sequence =  cache.key?(convertedValue) ? cache[convertedValue] : fibonacci.sequence(convertedValue)
        cache[convertedValue] = sequence if ! cache.key?(convertedValue)
        "fibonacci sequence for #{value} is #{sequence}"
    rescue ArgumentError => exception
        if value == 'cache'
            fibonacci.cache
        else
            "ArgumentError: #{exception}"
        end
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


