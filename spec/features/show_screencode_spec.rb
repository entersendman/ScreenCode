require "rails_helper"

RSpec.describe "Showing screencode" do

	before do
		@screencode = Post.create(title: "Title", text: "Description", code: "print 'Hello word'")
	end
	it "gets all information about screencode" do
		visit root_path
		click_link @screencode.title

		expect(current_path).to eq("/posts/#{@screencode.id}")
		expect(page).to have_text(@screencode.title)
		expect(page).to have_text(@screencode.text)
		expect(page).to have_text(@screencode.code)
	end
end
