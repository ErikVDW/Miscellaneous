def substrings string, dictionary
  string.downcase!
  dictionary.map! {|word| word.downcase}
  result_hash = Hash.new(0)
  dictionary.each do |word|
    result_hash[word] += 1 if string.include?(word)
  end
  result_hash
end
def substrings2 *args
  dictionary = args.last.map { |word| word.downcase }
  strings = args[0..-2].map { |string| string.downcase }
  result_hash = Hash.new(0)
  strings.each do |string|
    dictionary.each do |word|
      result_hash[word] += 1 if string.include?(word) && word.length > 1
    end
  end
  result_hash
end