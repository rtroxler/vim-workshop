def dist(x1, y1, x2, y2)
  Math.sqrt((x2 - x1) * (x2 - x1) + (y2 - y1) * (y2 - y1))
end

result =  dist(1,2,3,4).round(2) 
puts  "#{result} -- #{ result == 2.83 ? 'SUCCESS!' : 'fail'}"
