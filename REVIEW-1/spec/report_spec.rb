require 'report'

describe Report do
  describe '#grade_count' do
    it 'returns Green = 1 when the report is given "Green"' do
      expect(subject.grade_count("Green")).to eq "Green = 1"
    end
    it 'returns Amber = 1 when the report is given "Amber"' do
      expect(subject.grade_count("Amber")).to eq "Amber = 1"
    end
    it 'returns Red = 1 when the report is given "Red"' do
      expect(subject.grade_count("Red")).to eq "Red = 1"
    end
    it 'returns Uncounted = 1 when the report is given "Purple"' do
      expect(subject.grade_count("Purple")).to eq "Uncounted = 1"
    end
    it 'returns "Argument error: input must be a comma separated string" when the report is given 1' do
      expect { subject.grade_count(1) }.to raise_error(ArgumentError)
    end
    it 'returns "Green = 1, Amber = 1" (with Amber = 1 on a new line and no comma) when the report is given "Green, Amber"' do
      expect(subject.grade_count("Green, Amber")).to eq "Green = 1\nAmber = 1"
    end
    it 'returns "Green = 2" when the report is given "Green, Green"' do
      expect(subject.grade_count("Green, Green")).to eq "Green = 2"
    end
  end
end
