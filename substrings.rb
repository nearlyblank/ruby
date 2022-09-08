dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

print "Enter string: "
string = gets.chomp

def substrings(string,dictionary)
  matches_array = []
  count_array = []
  string_array = string.downcase.split


  dictionary.each do |dict_word|
    if string_array.any? {|user_word| user_word.include?(dict_word)}
      matches_array.push(dict_word)
    end
    count = string_array.count {|user_word| user_word.include?(dict_word)}
    count_array.push(count)
    count_array.delete(0)
  end
  result = matches_array.zip(count_array).to_h
  if result.empty? == false
    puts "Here are your matches: #{result}"
  else
    puts "No matches"
  end
end

substrings(string, dictionary)