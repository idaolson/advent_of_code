require 'csv'
array = (CSV.parse(File.read("input_day1.csv"))).flatten!
# print array
def increase_depth(array, i = 0, count = 0)
  if array.length <= (i + 1)
    return count
  elsif array[i] === array[-3]
    return count
  else
    count += 1 if (array[i].to_i + array[i + 1].to_i + array[i + 2].to_i) < (array[i + 1].to_i + array[i + 2].to_i + array[i + 3].to_i)
    i += 1
    increase_depth(array, i, count)
  end
end

# array = [199, 200, 208, 210, 200, 207, 240, 269, 260, 263]

puts increase_depth(array)



