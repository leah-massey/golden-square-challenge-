require 'is_task?.rb'

RSpec.describe "is_task? method" do 

    it "returns true if '#TODO' is present in text " do 
        expect(is_task?("#TODO play tennis")).to eq true
    end

    it "returns false if '#TODO' is not present in text" do 
        expect(is_task?("play tennis")).to eq false
    end

    context "if '#TODO is not all uppercase" do
        it "returns true" do
            expect(is_task?("#todo play tennis")).to eq true
        end

        it "returns true" do
            expect(is_task?("#Todo play tennis")).to eq true
        end 
    end

    it "returns false if #TODO part of a longer word" do 
        expect(is_task?("#TODOplay tennis")).to eq false
    end

    it "returns false if no '#' before 'TODO'" do 
        expect(is_task?("TODO play tennis")).to eq false
    end  
    
    it "returns true regardless of position of '#TODO' in string" do 
        expect(is_task?("play tennis #TODO")).to eq true
    end

    it "returns false if there is no text other than '#TODO'" do
        expect(is_task?("#TODO")).to eq false
    end

    it "fails" do 
        expect { is_task?("") }.to raise_error "You have entered nothing"
    end

    it "fails" do 
        expect { is_task?(2) }.to raise_error "You must enter a string"
    end


     

end 