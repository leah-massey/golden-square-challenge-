require 'grammar_stats'

RSpec.describe GrammarStats do 

    it "returns a boolean value whether the text begins with a capital letter and ends with full stop" do 
        new_text = GrammarStats.new
        expect(new_text.check("Hello.")).to eq true
    end

    it "returns a boolean value whether the text begins with a capital letter and ends with full stop" do 
        new_text = GrammarStats.new
        expect(new_text.check("Hello")).to eq false
    end

    it "returns a boolean value whether the text begins with a capital letter and ends with full stop" do 
        new_text = GrammarStats.new
        expect(new_text.check("hello.")).to eq false
    end

    it 'fails when string is empty' do
        new_text = GrammarStats.new
        expect { new_text.check("") }.to raise_error "You must enter a text"
    end

    it 'fails when inout is not a string' do
        new_text = GrammarStats.new
        expect { new_text.check(7) }.to raise_error "You must enter strings only"
    end

    describe "#percentage_good" do 
        
        it "returns 100 if one test passed and passed as true" do  
            new_text = GrammarStats.new
            new_text.check("Hello.")
            expect(new_text.percentage_good).to eq 100
        end

        it "returns pecentage true of multiple inputs rounding up to nearest whole number" do  
            new_text = GrammarStats.new
            new_text.check("Hello.")
            new_text.check("hello")
            new_text.check("Hello")
            expect(new_text.percentage_good).to eq 34
        end

        it "returns pecentage true of multiple inputs rounding up to nearest whole number" do  
            new_text = GrammarStats.new
            new_text.check("Hello.")
            new_text.check("hello")
            new_text.check("Hello")
            new_text.check("Hi.")
            expect(new_text.percentage_good).to eq 50
        end

    
    end 



    



end