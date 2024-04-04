# define the alphabet
#split the text into letters
#iterate over the letters using .map
#get the index of the letter from the alphabet
# if there is no index return the orig char
# subtract three from the index
# get the new letter from the alphabet
# join
ALPHABET = ("A".."Z").to_a

def encrypt(text)
  text.chars.map do |char|
    index = ALPHABET.index(char)
    index ? ALPHABET[index - 3] : char
  end.join
end


# Before Refactor
# def encrypt(text)
#   alphabet = ("A".."Z").to_a
#   text.chars.map do |char|
#     index = alphabet.index(char)
#     if index
#       new_index = index - 3
#       alphabet[new_index]
#     else
#       char
#     end
#   end.join
# end
