require "spec_helper"

describe Array do
	context "#all_empty" do
		it "returns true if all elements of the Array are empty" do
			expect(["", 1, ""].all_empty?).to be_true
		end

		it "returns false if some of the Array elements are not empty" do
			expect(["", 1, ""], Object.new, :a).to be_false
		end

		it "returns true for an empty Array" do
			expect([].all_empty?).to be_true
		end
	end
end