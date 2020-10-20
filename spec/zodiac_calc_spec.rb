require 'zodiac_calc'

describe ZodiacCalc do
  let(:time) { Time.now }
  let(:year) { time.strftime('%Y') }
  let(:zodiac) {ZodiacCalc.new}

  let(:aries) { Date.parse "#{year}-03-30"}
  let(:taurus) { Date.parse "#{year}-04-21"}
  let(:gemini) { Date.parse "#{year}-05-30"}
  let(:cancer) { Date.parse "#{year}-06-30"}
  let(:leo) { Date.parse "#{year}-07-30"}
  let(:virgo) { Date.parse "#{year}-08-30"}
  let(:libra) { Date.parse "#{year}-09-30"}
  let(:scorpio) { Date.parse "#{year}-10-30"}
  let(:sagittarius) { Date.parse "#{year}-11-30"}
  let(:capricorn) { Date.parse "#{year}-12-30"}
  let(:aquarius) { Date.parse "#{year}-01-30"}
  let(:pisces) { Date.parse "#{year}-02-28"}

  describe '#calc_sign' do
    it 'returns aries' do
      expect(zodiac.calc_sign(aries)).to eq 'aries'
    end
    it 'returns taurus' do
      expect(zodiac.calc_sign(taurus)).to eq 'taurus'
    end
    it 'returns gemini' do
      expect(zodiac.calc_sign(gemini)).to eq 'gemini'
    end
    it 'returns cancer' do
      expect(zodiac.calc_sign(cancer)).to eq 'cancer'
    end
    it 'returns leo' do
      expect(zodiac.calc_sign(leo)).to eq 'leo'
    end
    it 'returns virgo' do
      expect(zodiac.calc_sign(virgo)).to eq 'virgo'
    end
    it 'returns libra' do
      expect(zodiac.calc_sign(libra)).to eq 'libra'
    end
    it 'returns scorpio' do
      expect(zodiac.calc_sign(scorpio)).to eq 'scorpio'
    end
    it 'returns sagittarius' do
      expect(zodiac.calc_sign(sagittarius)).to eq 'sagittarius'
    end
    it 'returns capricorn' do
      expect(zodiac.calc_sign(capricorn)).to eq 'capricorn'
    end
    it 'returns aquarius' do
      expect(zodiac.calc_sign(aquarius)).to eq 'aquarius'
    end
    it 'returns pisces' do
      expect(zodiac.calc_sign(pisces)).to eq 'pisces'
    end
    it 'returns the correct sign for a cusp brithday' do
      @cusp_scorpio = Date.parse "#{year}-10-23"
      expect(zodiac.calc_sign(@cusp_scorpio)).to eq 'scorpio'
    end
  end
end
