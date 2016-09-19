require_relative 'app'

describe HomeDecor do
		let(:new_applicants) {HomeDecor.new}

	it "prints all applicants" do
		expect(new_applicants.print({"Applicant: 72: Man" => {"Address" => "mail@mail"}})).to eq ({"Applicant: 72: Man" => {"Address" => "mail@mail"}})

	end
	
end