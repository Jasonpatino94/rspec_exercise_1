def hipsterfy(word)

    i = word.length-1

    vowels = ('aeiou')

    while i >= 0
        if vowels.include?(word[i])
            return word[0...i] + word[i+1..-1]
        end
        i -=1
    end

    word

end

hipsterfy('word')


def vowel_counts(string)

    vowel = ('aeiou')

    hash = {}

    newstring = string.downcase

    newstring.each_char do |c|
        if vowel.include?(c) && !hash[c]
            hash[c] = 1
        elsif !!hash[c]
            hash[c] +=1
        end
    end
    
     hash

end

vowel_counts("code bootcamp")


def caesar_cipher(message, n)

    alphabet = ('a'..'z').to_a 

    newstring= ''


    message.each_char do |c|
        if alphabet.include?(c)
            oldidx=  alphabet.index(c)
            newidx = oldidx + n
            newstring += alphabet[newidx % 26]
        else
            newstring += c
        end
    
    end
    
    newstring

end

caesar_cipher('hello', 1)
