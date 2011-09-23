# A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91  99.
# 
# Find the largest palindrome made from the product of two 3-digit numbers.

# min_bound = (100 * 100) = 10000 so 10001
# max_bound = (999 * 999) = 998001 so 997799

possible_max = 0

(100..999).each do |i|
  (100..999).each do |j|
    product = i * j
    possible_max = product if product.to_s == product.to_s.reverse && product > possible_max
  end
end

puts possible_max
