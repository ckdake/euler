# The prime factors of 13195 are 5, 7, 13 and 29.

# What is the largest prime factor of the number 600851475143 ?

require 'prime'

def max_prime_factor(number)
  max_prime_factor = 0
  Prime.each(Math.sqrt(number)) do |prime|
    max_prime_factor = prime if (number % prime == 0)
  end
  max_prime_factor
end

#puts max_prime_factor(13195)

puts max_prime_factor(600851475143)

