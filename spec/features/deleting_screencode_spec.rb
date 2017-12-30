require "rails_helper"

RSpec.describe "Deleting screencode" do 

	before do
		Post.delete_all
		@screencode = Post.create(title: "title", text: "text", code: "code")
	end
	it "deleting post" do
		visit root_path
		click_link "Delete"
		expect(page).not_to have_text(@screencode.title)
		expect(page).not_to have_text(@screencode.text)
	end
	
end