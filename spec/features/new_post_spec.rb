require "rails_helper"

RSpec.describe "New Post" do
	it "display the correct field to creae a new post" do
		visit root_path

		click_link("post your screen")

		expect(page).to have_field("Title")
		expect(page).to have_text("Description")
		expect(page).to have_text("Code")
	end
end
