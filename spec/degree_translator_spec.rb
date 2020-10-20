require '../lib/degree_translator'

RSpec.describe DegreeTranslator do
  describe 'translator' do
    context 'C -> K' do
      it { expect(DegreeTranslator.new.conversion(10.0, 'C', 'K')).to eq 283.15 }
    end
    context 'C -> F' do
      it { expect(DegreeTranslator.new.conversion(27.0, 'C', 'F')).to eq(80.6) }
    end
    context 'K -> C' do
      it { expect(DegreeTranslator.new.conversion(303.40, 'K', 'C').round(2)).to eq(30.25) }
    end
    context 'K -> F' do
      it { expect(DegreeTranslator.new.conversion(81.0, 'K', 'F')).to eq(-313.87) }
    end
    context 'F -> C' do
      it { expect(DegreeTranslator.new.conversion(57.2, 'F', 'C').round(2)).to eq 14.0 }
    end
    context 'F -> K' do
      it { expect(DegreeTranslator.new.conversion(-265.0, 'F', 'K').round(2)).to eq 108.15 }
    end
  end
end
