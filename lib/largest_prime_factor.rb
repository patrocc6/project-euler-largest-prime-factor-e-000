# Enter your procedural solution here!
include Math

def largest_prime_factor(number)
  return number if prime?(number)

 ( (2..sqrt(number).round).reverse_each do |num|
    if number%num == 0 && prime?(num)
      return num
    end
  end)

  return nil
end

def prime?(number)
  if number <= 0
    return false
  end

  (2..sqrt(number).floor).reverse_each do |num|
    if number%num == 0
      return false
    end
  end

  return true

end

