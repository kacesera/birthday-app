class BirthdayCalculator
  attr_reader :day, :month
  def initialize(day, month)
    @day = day
    @month = month
  end

  def birthday_today?
    today_date
    same_day? && same_month?
  end

  private

  def same_day?
    @today_day == @day
  end

  def same_month?
    @today_month == @month
  end

  def today_date
    time = Time.new
    @today_day = time.strftime('%d')
    @today_month = time.strftime('%B')
  end
end