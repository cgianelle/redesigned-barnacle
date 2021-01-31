require 'fibonacci'

RSpec.describe Calculations::Fibonacci do
    before(:each) do 
        @fibonacci = Calculations::Fibonacci.new
    end

    context "Given a value of 0" do
        it "returns a sequence of 0" do 
            expect(@fibonacci.sequence(0)).to eq 0
        end
    end

    context "Given a value of 1" do 
        it "returns a sequence of 1" do 
            expect(@fibonacci.sequence(1)).to eq 1
        end
    end

    context "Given a value of 2" do 
        it "returns a sequence of 1" do 
            expect(@fibonacci.sequence(2)).to eq 1
        end
    end

    context "Given a value of 3" do 
        it "returns a sequence of 2" do 
            expect(@fibonacci.sequence(3)).to eq 2
        end
    end

    context "Given a value of 4" do 
        it "returns a sequence of 3" do 
            expect(@fibonacci.sequence(4)).to eq 3
        end
    end

    context "Given a value of 5" do 
        it "returns a sequence of 5" do 
            expect(@fibonacci.sequence(5)).to eq 5
        end
    end

    context "Given a value of 10" do 
        it "returns a sequence of 55" do 
            expect(@fibonacci.sequence(10)).to eq 55
        end
    end

    context "Given a value of 15" do 
        it "returns a sequence of 610" do 
            expect(@fibonacci.sequence(15)).to eq 610
        end
    end

end