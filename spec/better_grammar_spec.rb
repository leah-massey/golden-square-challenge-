require 'better_grammar'

RSpec.describe "better_grammar method" do

    it "returns a string" do
        expect(better_grammar("Hello")).to eq "Hello."
    end

     it "adds a capital letter to the first word" do 
        expect(better_grammar("my name is Leah.")).to eq "My name is Leah."
     end

     it "adds a fullstop at the end of the text" do
        expect(better_grammar("My name is Leah")).to eq "My name is Leah."
     end

     it "returns an empty string if empty string inputted" do 
        expect(better_grammar("")).to eq "You have not written any content"
     end

     it "adds a capital letter and full stop to a sentence if either are missing" do 
        expect(better_grammar("Hi")).to eq "Hi."
     end


     context "When input is not a string" do
        it "fails" do 
            expect { better_grammar(1) }.to raise_error "Input must be a string"
        end
    end

end