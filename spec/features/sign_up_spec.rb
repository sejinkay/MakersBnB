feature 'Non system user can register' do
  scenario 'new users details are saved to database' do
    visit '/'
    click_button "Sign Up"
    fill_in "First Name", with: "Dave"
    fill_in "Surname", with: "Jones"
    fill_in "Email", with: "Email"
    fill_in "Password", with: "Password"
    click_button "submit"
    expect(page).to have_content("Welcome Dave")
  end
end
