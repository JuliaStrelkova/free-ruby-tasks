def filter(str)
  puts(str.tr('ркнРКН',''))
end

puts filter(ARGV[0])
