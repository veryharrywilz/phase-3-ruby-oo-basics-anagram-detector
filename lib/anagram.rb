require 'pry'

class Anagram

    def initialize(word)
        @word=word
    end


    def match(compareWords)
        wordsThatMatch = []
        inputWordArray = @word.split("").sort
        compareWords.map do |word|
            wordArray = word.split("").sort
            if wordArray == inputWordArray
                wordsThatMatch.push(word)
            elsif wordArray != inputWordArray
                "detects no matches"
            end
        end
        wordsThatMatch
    end
end

binding.pry