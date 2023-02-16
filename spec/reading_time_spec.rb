require "reading_time"

RSpec.describe "reading_time method" do 


    it "fails" do 
        result = reading_time("") 
        expect(result).to eq "You have nothing to read"
    end

    it "returns time needed to read text" do 
        result = reading_time("Alice sat under the tree") 
        expect(result).to eq "1.5 seconds"
    end

    context "when input is not a string" do
        it "fails" do 
            
            expect { reading_time(1) }.to raise_error "This is not a text"
        end
    end

end