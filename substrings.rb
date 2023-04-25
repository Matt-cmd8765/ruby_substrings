dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(word, array)
    # convert to lowercase and split out the words
    splits = word.downcase.split(/\W+/)
    #new array to put word before counting them in the hash
    new_array = []
    splits.each do |subword|
        # add words that match the subword partially or fully and push them to the array
        array.each do |array_word|
            if subword.include? array_word
                new_array.push(array_word)
            end
        end
    end
    # count the new_array and return to a new hash. 
    new_hash = new_array.reduce(Hash.new(0)) do |count, string| 
        count[string] += 1
        count
    end
    puts new_hash
end

substrings("Howdy partner, sit down! How's it going?", dictionary)