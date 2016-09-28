require_relative 'gps2_2'

describe GroceryList do 
	let(:list) { GroceryLsist.new }

	it "creates a list hash of grocery items and quantites" do
		expect(list.create_list("a b c")).to eq {"a"=>1, "b"=>1, "c"=>1}
	end
end