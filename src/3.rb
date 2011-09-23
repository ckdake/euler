# The prime factors of 13195 are 5, 7, 13 and 29.

# What is the largest prime factor of the number 600851475143 ?

$STACK_SIZE = 101

def populate_prime_stack(seed)
  # Build an array of numbers to consider
  tenative = ((seed + 1)..(seed + $STACK_SIZE)).to_a
  # For each number up to the current number...
  (2..(seed/2 + 1)).each do |i|
    break if tenative.length == 0
    # Remove all multiples of that number
    accum = i
    while (accum < seed)
      accum += i
    end
    while (accum < (seed + $STACK_SIZE))
      tenative.delete(accum)
      accum += i
    end
  end
  tenative
end

def next_prime_in_stack(prev_prime, prime_stack)
  if prime_stack.length == 0
    prime_stack = populate_prime_stack(prev_prime)
    prev_prime += $STACK_SIZE if prime_stack.length == 0
  end
  prime_stack.delete_at(0)
end

def max_prime_factor(number)
  prime_stack = []
  max_prime_factor = 1
  pointer = 2
  
  while (pointer < (number / 2 + 1))
    if (number % pointer == 0)
      max_prime_factor = pointer
      puts "Maybe it's #{max_prime_factor}"
    end
    pointer = next_prime_in_stack(pointer, prime_stack)
  end

  max_prime_factor
end

#start = Time.now
#puts max_prime_factor(13195)
#puts Time.now - start

#start = Time.now
puts max_prime_factor(600851475143)
#puts Time.now - start
