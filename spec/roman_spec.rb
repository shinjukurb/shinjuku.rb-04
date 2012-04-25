require "spec_helper"

describe Roman do
  it { should be }
  context "with 1 digit" do
    subject { Roman.to_roman(num) }
		
		context 'when passed -1' do
			let(:num) { -1 }
			it do
				expect {
					subject
			}.to raise_error(Roman::InvalidArgumentError)
			end
		end

		context 'when passed 0' do
			let(:num) { 0 }
			it do
				expect {
					subject
				}.to raise_error(Roman::InvalidArgumentError)
			end
		end

    context 'when passed 1' do
      let(:num) { 1 }
      it { should == 'I' }
    end
    context 'when passed 2' do
      let(:num) { 2 }
      it { should == 'II' }
    end
    context 'when passed 4' do
      let(:num) { 4 }
      it { should == 'IV' }
    end
    context 'when passed 5' do
      let(:num) { 5 }
      it { should == 'V' }
    end
    context 'when passed 6' do
      let(:num) { 6 }
      it { should == 'VI' }
    end
    context 'when passed 7' do
      let(:num) { 7 }
      it { should == 'VII' }
    end
    context 'when passed 9' do
      let(:num) { 9 }
      it { should == 'IX' }
    end
  end

  context "with 2 digit" do
    subject { Roman.to_roman(num) }
    context 'when passed 10' do
      let(:num) { 10 }
      it { should == 'X' }
    end
  end

  context "with 3 digit" do
    subject { Roman.to_roman(num) }
    context 'when passed 100' do
      let(:num) { 100 }
      it { should == 'C' }
    end
    context 'when passed 500' do
      let(:num) { 500 }
      it { should == 'D' }
    end
  end

  context "with 4 digit" do
    subject { Roman.to_roman(num) }
    context 'when passed 1000' do
      let(:num) { 1000 }
      it { should == 'M' }
    end
    context 'when passed 1999' do
      let(:num) { 1999 }
      it { should == 'MCMXCIX' }
    end
  end


end
