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
    @num_of_days = (@birthdate - @today_date).to_i
    turn_positive if @num_of_days.negative?
  end
  
  def turn_positive
    @num_of_days *= -1
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
  end

  def parse_today_date
    Date.parse "#{@today_year}-#{@today_month}-#{@today_day}"
  end

  def parse_birthdate
    Date.parse "#{@today_year}-#{@month}-#{@day}"
  end

  def format_compared_dates
    @birthdate = parse_birthdate
    @today_date = parse_today_date
  end
end