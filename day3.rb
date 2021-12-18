require 'csv'
array = (CSV.parse(File.read("input_day3.csv"))).flatten!

def binary_diagnostic(array)
  gamma = []
  epsilon = []

  array[0].length.times do |i|
    zeroes = 0
    ones = 0

    array.each do |number| 
      if number[i] == "0"
        zeroes += 1
      else 
        ones += 1
      end 
    end 

    if ones > zeroes
      gamma << "1"
      epsilon << "0"
    elsif zeroes > ones
      gamma << "0"
      epsilon << "1"
    end 
  end 

  gamma = gamma.join.to_i(base=2)
  epsilon = epsilon.join.to_i(base=2)

  gamma * epsilon
end 

# array = ["00100",
# "11110",
# "10110",
# "10111",
# "10101",
# "01111",
# "00111",
# "11100",
# "10000",
# "11001",
# "00010",
# "01010"]

puts binary_diagnostic(array)