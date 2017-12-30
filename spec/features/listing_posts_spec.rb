require "rails_helper"

RSpec.describe "Post list" do
	it "display title and description of saved screencodes" do
		screencode1 = Post.create(title: "Title", text: "Description", code: "print 'Hello word'")
		screencode1 = Post.create(title: "Title2", text: "Description2", code: "print 'Hello word2'")

		visit "/"

		expect(page).to have_text("Title")
		expect(page).to have_text("Description")
		expect(page).to have_text("Title2")
		expect(page).to have_text("Description2")

		expect(page).to have_text("post your screen")
	end
end
