dictionary = ["below","down","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(word, array)
    splits = word.split(' ')
    splits.each do 
    add = array.select { |substring| substring == word}
    new_hash = add.reduce(Hash.new(0)) do |key, value|
        key[value] += 1
        key
    end
    puts new_hash
end

substrings("down below", dictionary)