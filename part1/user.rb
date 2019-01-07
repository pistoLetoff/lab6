require './src.rb'
puts 'precision is 0.0001'
puts format('%10.4f ', sum(0.0001))
puts 'precision is 0.000001'
puts format('%10.6f', sum(0.000001))
