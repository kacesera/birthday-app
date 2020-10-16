require 'birthday_calculator'

describe BirthdayCalculator do

  describe '#initialize' do
    before do
      @birthday = BirthdayCalculator.new('23', 'October')
    end

    it 'takes in a month' do
      expect(@birthday.month).to eq 'October'
    end

    it 'takes in a day' do
      expect(@birthday.day).to eq '23'
    end
  end
end