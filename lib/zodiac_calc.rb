class ZodiacCalc

  def initialize
    @time = Time.now
    @year = @time.strftime('%Y')
    @current_zodiac = [
      {sign: 'aquarius', start: parse_date('01', '20') , end: parse_date('02', '18')},
      {sign: 'pisces', start: parse_date('02', '19') , end: parse_date('03', '20')},
      {sign: 'aries', start: parse_date('03', '21') , end: parse_date('04', '19')},
      {sign: 'taurus', start: parse_date('04', '20') , end: parse_date('05', '20')},
      {sign: 'gemini', start: parse_date('05', '21') , end: parse_date('06', '20')},
      {sign: 'cancer', start: parse_date('06', '21') , end: parse_date('07', '22')},
      {sign: 'leo', start: parse_date('07', '23') , end: parse_date('08', '22')},
      {sign: 'virgo', start: parse_date('08', '23') , end: parse_date('09', '22')},
      {sign: 'libra', start: parse_date('09', '23') , end: parse_date('10', '22')},
      {sign: 'scorpio', start: parse_date('10', '23') , end: parse_date('11', '21')},
      {sign: 'sagittarius', start: parse_date('11', '22') , end: parse_date('12', '21')},
      {sign: 'capricorn', start: parse_date('12', '22') , end: parse_future_date('01', '19')},
    ]
  end

  def calc_sign(date)
    @current_zodiac.each do |star_sign|
      return star_sign[:sign] if (star_sign[:start]..star_sign[:end]).cover?(date)
    end
  end

  private

  def parse_date(month, day)
    Date.parse "#{@year}-#{month}-#{day}"
  end

  def parse_future_date(month, day)
    next_year = @year.to_i + 1
    Date.parse "#{next_year}-#{month}-#{day}"
  end
end
