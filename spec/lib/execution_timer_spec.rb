require 'spec_helper'

describe ExecutionTimer do

  describe '#get_time' do

    before do
      @prc = Proc.new do
        "a"*1_000_000_000
      end
    end

    it 'should return milliseconds when given a block' do
      expect(described_class.get_time &@prc).to be_an_instance_of(Fixnum)
    end

    it 'should raise ArgumentError if no block given' do
      expect{ described_class.get_time 'hello' }.to raise_error(ArgumentError)
    end

  end

end
