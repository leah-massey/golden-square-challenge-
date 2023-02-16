#A method called make_snippet that takes a string as an argument and returns the first five words and then a '...' if there are more than that.

require 'make_snippet'
RSpec.describe "make_snippet() method" do 

    it "returns empty string if input empty" do 
        result = make_snippet("")
        expect(result).to eq ""
    end
   
    it "returns the entire string if the string is 5 words long" do 
      result = make_snippet("Today I am wearing pink.")
      expect(result).to eq "Today I am wearing pink."
    end

    it "it returns '...' after the first five words if string is longer" do 
        result = make_snippet("Today I am wearing pink pyjamas.")
        expect(result). to eq "Today I am wearing pink ..."
    end 
    
end

