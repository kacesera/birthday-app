class BirthdayCalculator
  attr_reader :day, :month

  def initialize(day, month)
    @day = day
    @month = Date::MONTHNAMES.index(month).to_s
    today_date
  end

  def birthday_today?
    same_day? && same_month?
  end

  def days_until_birthday
    format_compared_dates
    count_days
    @num_of_days
  end

  private

  def count_days
    @num_of_days = number_days(@birthdate > @today_date)
  end

  def number_days(boolean)
    return (@birthdate - @today_date).to_i if boolean
    (parse_birthdate(@next_year) - @today_date).to_i
  end

  def same_day?
    @today_day == @day
  end

  def same_month?
    @today_month == @month
  end

  def today_date
    time = Time.now
    @today_day = time.strftime('%d')
    @today_month = time.strftime('%m')
    @today_year = time.strftime('%Y')
    @next_year = (time.strftime('%Y').to_i + 1).to_s
  end

  def parse_today_date
    Date.parse "#{@today_year}-#{@today_month}-#{@today_day}"
  end

  def parse_birthdate(year = @today_year)
    Date.parse "#{year}-#{@month}-#{@day}"
  end

  def format_compared_dates
    @birthdate = parse_birthdate
    @today_date = parse_today_date
  end
end