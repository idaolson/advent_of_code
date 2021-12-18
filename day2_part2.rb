require 'csv'
array = (CSV.parse(File.read("input_day2.csv"), :col_sep => " "))

def directions(array)
  horizontal = 0
  depth = 0
  aim = 0

  array.each do |pair|
    if pair[0] == "up"
      # depth -= pair[1].to_i
      aim -= pair[1].to_i
    elsif pair[0] == "down"
      # depth += pair[1].to_i
      aim += pair[1].to_i
    else 
      horizontal += pair[1].to_i
      depth += aim * pair[1].to_i
    end 
  end 
  return horizontal * depth
end 

# array = [["forward", 5],
# ["down", 5],
# ["forward", 8],
# ["up", 3],
# ["down", 8],
# ["forward", 2]]

puts directions(array)