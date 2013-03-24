require_relative '../lib/instruction.rb'

describe Instruction do
  let(:memory) { '' }
  let(:operands) { [] }

  describe '#execute' do
    it 'requires a memory map and list of operands' do
      expect {
        Instruction.new.execute
      }.to raise_error(ArgumentError)
    end

    it 'raises a NotImplemented error by default' do
      expect {
        Instruction.new.execute(memory, *operands)
      }.to raise_error(NotImplementedError)
    end
  end

  describe '.performing' do
    it 'returns an instruction based on the supplied action' do
      expected = 'the expected result'
      action = lambda { |memory, *operands| expected }
      instruction = Instruction.performing &action
      instruction.execute(memory, *operands).should == expected
    end
  end
end
