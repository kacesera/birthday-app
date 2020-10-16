require 'birthday_calculator'

describe BirthdayCalculator do

  describe '#initialize' do
    before do
      @birthday = BirthdayCalculator.new('23', 'October')
    end

    it 'takes in a month' do
      expect(@birthday.day).to eq '23'
    end
  end
end