require File.expand_path('../roman.rb', __FILE__)

describe Roman do
  it { should be }
  context "with 1 digit" do
    subject { Roman.to_roman(num) }
    context 'when passed 1' do
      let(:num) { 1 }
      it { should == 'I' }
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

end



