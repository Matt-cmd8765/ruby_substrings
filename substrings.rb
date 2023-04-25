dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

#word.downcase.split(/\W+/)

def substrings(word, array)
    splits = word.downcase.split(/\W+/)
    #puts splits[0].include? "low"
    #puts splits
    new_array = []
    splits.each do |subword|
        array.each do |thing|
            if subword.include? thing
                new_array.push(thing)
            end
        end
        add = array.select { |substring| substring == subword}
        add.each do |new_word|
            new_array.push(new_word)
        end
    end
    p new_array
    new_hash = new_array.reduce(Hash.new(0)) do |count, string| 
        count[string] += 1
        count
    end
    puts new_hash
end

substrings("below", dictionary)