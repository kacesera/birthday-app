def today_date
  time = Time.now
  @month = time.strftime('%B')
  @day = time.strftime('%d')
end

def enter_my_birthday
  visit '/'
  fill_in :name, with: 'Maggie'
  fill_in :day, with: @day
  select(@month, from: 'month')
  click_button('Go!')
end