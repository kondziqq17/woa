require "rails_helper"

RSpec.feature"Signup users" do
	scenario "with valid credential" do
		visit"/"

		click_link "Sign up"
		fill_in "Email", with: "user@exmaple.com"
		fill_in "Password", with: "password"
		fill_in "Password confirmation", with: "password"
		click_button "Sign up"

		expect(page).to have_content("You have signed up successfully.")
	end

=begin
	scenario "with invalid credential" do
		click_link "Sign up"
		fill_in "Email", with: ""
		fill_in "Password", with: ""
		fill_in "Password confirmation", with: ""
		click_button "Sign up"

		expect(page).to have_content("You have not signed up successfully.")
	end
=end
end