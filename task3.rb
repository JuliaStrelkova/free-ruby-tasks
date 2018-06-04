def gcd (a, b)
  a = (a.to_i).abs
  b = (b.to_i).abs
  if b == 0
    return a.abs
  end
  gcd(b, (a % b))
end

puts gcd(ARGV[0], ARGV[1])