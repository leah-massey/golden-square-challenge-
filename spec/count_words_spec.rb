#A method called count_words that takes a string as an argument 
#and returns the number of words in that string.

require 'count_words'

RSpec.describe "count_words method" do 
    
    context  "when input is not a string" do 
        it "fails" do
            expect(count_words(3)).to eq "This was not a string!"
        end

        it "fails" do 
            expect(count_words(["hello", 3])).to eq "This was not a string!"
        end

    end

    it "returns number of words in string" do
        expect(count_words("hello leah")).to eq 2
    end

    it "returns number of words in string" do
            expect(count_words("")).to eq 0
    end 



end


