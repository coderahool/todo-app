require "rails_helper"

feature "User completes todos" do
    scenario "successfully" do
        sign_in

        create_todo "Buy Milk"

        click_on "Mark complete"

        expect(page).to display_completed_todo "Buy Milk"
    end
end