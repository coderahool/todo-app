module Features
    def sign_in
        visit root_path
        fill_in "Email", with: "person@example.com"  # Correct the field name
        click_on "Sign in"
    end
end