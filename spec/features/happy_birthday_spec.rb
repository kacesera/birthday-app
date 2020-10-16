feature 'Happy Birthday' do
  scenario 'It says Happy Birthday when it is your birthday' do
    today_date
    enter_my_birthday
    expect(page).to have_content "Happy Birthday, Maggie!"
  end
end