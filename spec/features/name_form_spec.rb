feature "Name Form" do
  scenario "Asks for a name" do
    visit '/'
    expect(page).to have_content "What's your name?"
  end

  scenario "Asks for your birthday" do
    visit '/'
    expect(page).to have_content "When's your birthday?"
  end
end