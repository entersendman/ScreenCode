require "rails_helper"

RSpec.describe "Creating Post" do

	before do
		visit posts_new_path
	end

	it "creates correctly" do
		
		fill_in "Title", with: "Title test"
		fill_in "Description", with: "Test Description"
		fill_in "Code", with: "var u = 3;"

		click_button("Screen")

		expect(current_path).to eq(root_path)
	end

	it "what to do in case error in creating" do
		click_button("Screen")
		expect(current_path).to eq(posts_new_path)
	end

end
