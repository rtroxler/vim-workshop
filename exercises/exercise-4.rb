def most_common(s)
  counts_hash = s.downcase.tr(",.?!",'').split(' ').each_with_object(Hash.new(0)) { |e, h| h[e] += 1 }
  counts_hash.select { |k, v| v == counts_hash.values.max }.keys
end

result1 = most_common('Words in a short, short words, lists of words!') 
p result1
p result1 == ['words'] ? 'SUCCESS!' : 'fail'

result2 = most_common('a short list of words with some short words in it')
p result2
p result2 == ['short', 'words'] ? 'SUCCESS' : 'fail'
