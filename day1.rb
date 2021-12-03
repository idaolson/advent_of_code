require 'csv'
array = (CSV.parse(File.read("input_day1.csv"))).flatten!
# print array
def increase_depth(array, i = 0, count = 0)
  if array.length <= (i + 1)
    return count
  else
    count += 1 if array[i].to_i < array[i + 1].to_i
    i += 1
    increase_depth(array, i, count)
  end
end

# array = [191,
# 192,
# 201,
# 205,
# 206,
# 203,
# 188,
# 189,
# 199,
# 206,
# 224,
# 230,
# 233,
# 232,
# 260,
# 257,
# 258,
# 259,
# 251,
# 233,
# 236,
# 237,
# 238,
# 241,
# 242,
# 243,
# 250]

puts increase_depth(array)
