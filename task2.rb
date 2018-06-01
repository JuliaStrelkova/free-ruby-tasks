def min_shift(first_str, second_str)
  first_ar = first_str.split('')
  second_ar = second_str.split('')

  if first_ar == second_ar
    return 0
  end

  if first_ar - second_ar != []
    return -1
  end

  if first_ar.size != second_ar.size
    return -1
  end

  counter = 0
  i = 0
  loop do
    i += 1
    if first_ar == second_ar
      break
    end
    first_ar.unshift(first_ar.pop)
    counter = counter + 1
    break if i == first_ar.size
  end
  if counter == first_ar.size
    return -1
  end

  return (first_ar.size - counter) > counter ? counter : first_str.size - counter
end

puts min_shift(ARGV[0], ARGV[1])
