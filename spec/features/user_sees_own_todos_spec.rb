require 'rails_helper'

feature "User sees owns todos" do
    scenario "doesn't see other's todos" do
        Todo.create(title: "Buy Milk", email: "someone_else@example.com")
        sign_in_as "someone@example.om"

        expect(page).not_to have_css ".todo li", text: "Buy Milk"
    end
end