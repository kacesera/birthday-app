require 'birthday_calculator'

describe BirthdayCalculator do
  let(:time) { Time.now }
  let(:day) { time.strftime('%d') }
  let(:month) { time.strftime('%B') }
  let(:year) { time.strftime('%Y') }
  let(:birthday) { BirthdayCalculator.new('23', 'October') }

  describe '#initialize' do
    it 'takes in a month' do
      expect(birthday.month).to eq "10"
    end
    it 'takes in a day' do
      expect(birthday.day).to eq "23"
    end
  end

 describe '#birthday_today?' do
    it 'confirms if the dates match' do
      today_birthday = BirthdayCalculator.new(day, month)
      expect(today_birthday.birthday_today?).to be true
    end

    it 'returns false when dates do not match' do
      allow(birthday).to receive(:same_day?) { false }
      expect(birthday.birthday_today?).to be false
    end
  end

  describe '#days_until_birthday' do
    before do
      @set_date = Date.parse "#{year}-03-02"
    end

    it 'returns the number of days until birthday from today' do
      allow(birthday).to receive(:parse_today_date) { @set_date }
      expect(birthday.days_until_birthday).to eq 235
    end
  end

end