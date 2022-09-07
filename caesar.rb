print "Enter text to encrypt: "
string = gets.chomp
print "Enter number to shift: "
num = gets.chomp.to_i

def caesar(string, num)
  chars = []
  text = []
  string = string.chars
  string.each do |char_to_num|
    if char_to_num.ord >=65 && char_to_num.ord <=90
      if char_to_num.ord+num > 90
        chars.push char_to_num.ord+num - 26
      else
        chars.push char_to_num.ord+num
      end
    elsif char_to_num.ord >=97 && char_to_num.ord <=122
      if char_to_num.ord+num > 122
        chars.push char_to_num.ord+num - 26
      else
        chars.push char_to_num.ord+num
      end
    else
      chars.push char_to_num
    end
  end
  chars.each do |num_to_char|
    text.push num_to_char.chr
  end
  return text.join
end
puts "Encrypted text: " + caesar(string,num)