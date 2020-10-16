feature 'Count Days' do
  scenario 'It does not say Happy Birthday!' do
    today_date
    enter_non_birthday
    expect(page).to_not have_content "Happy Birthday, Maggie!"
  end

  scenario "It counts the days until the user's birthday" do
    today_date
    enter_non_birthday
    expect(page).to have_content "Your birthday will be in #{month_days} days, Maggie!"
  end
end