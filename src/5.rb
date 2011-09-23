# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
# 
# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

previous_smallest_number = 1
smallest_number = 1

(2..20).each do |i|
  while (smallest_number % i != 0)
    smallest_number += previous_smallest_number
  end
  previous_smallest_number = smallest_number
end

puts smallest_number