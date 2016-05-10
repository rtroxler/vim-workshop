def rev s
  r = s
  s.chars.each_with_index do |c, i| 
    r[s.length - 1 - i] = c
  end
  r
end

result = rev("hello") == "olleh" 
puts "#{result} -- #{result ? "SUCCESS!" : "fail."}"
