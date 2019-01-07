require_relative 'maxim'

puts 'Результат для функций, переданных лямбдой'
puts maxim(
         0.5,
         1,
         ->(x) { Math.sin(x) / x },
         ->(x) { Math.tan(x + 1) / (x + 1) }
     )
puts 'Результат для Proc'
maxim(0.5, 1) do |x|
  ((Math.sin(x) / x) - (Math.tan(x + 1) / (x + 1))).abs
end