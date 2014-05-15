require 'spec_helper'
require 'triangle'

describe Triangle do
	
	describe "#kind" do

		context "with correct params" do
			it "should return the type of triangle" do
				t = Triangle.new(1, 1, 1);
				t.kind().should == "Equilateral"
				t = Triangle.new(4, 4, 5);
				t.kind().should == "Isosceles"
			end
		end

		context "with incorrect params" do
			it "should raise an error" do
				t = Triangle.new(1, 1, 0);
				expect {t.kind()}.to raise_error
				t = Triangle.new(1, 1, 2);
				expect {t.kind()}.to raise_error
			end
		end

	end

end