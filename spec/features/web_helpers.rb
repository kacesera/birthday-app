def today_date
  @time = Time.now
  @month = @time.strftime('%B')
  @day = @time.strftime('%d')
  @year = @time.strftime('%Y')
end

def see_next_month
  next_month = (@time.strftime('%m').to_i + 1)
  Date::MONTHNAMES[next_month]
end

def enter_my_birthday
  visit_page
  select(@month, from: 'month')
  click_button('Go!')
end

def visit_page
  visit '/'
  fill_in :name, with: 'Maggie'
  fill_in :day, with: @day
end

def enter_non_birthday
  visit_page
  select(see_next_month, from: 'month')
  click_button('Go!')
end

def month_days
  parse_dates
  (@next_month - @today).to_i
end

def parse_dates
  @today = Date.parse "#{@year}-#{@month}-#{@day}"
  @next_month = Date.parse "#{@year}-#{see_next_month}-#{@day}"
end