require "rails_helper"

RSpec.describe "Editing screencode" do

	before do
		Post.delete_all
		@screencode = Post.create(title: "Title", text: "Description", code: "print 'Hello word'")
		visit root_path
		click_link("Edit")
	end

	it "has old data for update" do
		
		expect(find_field('Title').value).to eq(@screencode.title)
		expect(find_field("Description").value).to eq(@screencode.text)
		expect(find_field("Code").value).to eq(@screencode.code)
	end

	it "update (change ) correctly" do
		fill_in "Title", with: "Title test"
		fill_in "Description", with: "Test Description"
		fill_in "Code", with: "var u = 3;"
		click_button("Screen")

		expect(current_path).to eq(post_path(@screencode.id))
	end

	it "doesn't update (change ) correctly" do
		fill_in "Title", with: ""
		fill_in "Description", with: ""
		fill_in "Code", with: ""
		click_button("Screen")

		expect(current_path).to eq(post_edit_path(@screencode.id))
	end
end
