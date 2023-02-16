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


end