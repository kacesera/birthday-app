feature "Greeting" do
  scenario "can greet the visitor" do
    visit '/'
    expect(page).to have_content 'Hello There!'
  end
end