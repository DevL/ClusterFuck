require_relative '../lib/instruction.rb'

describe Instruction do
  let(:memory) { '' }
  let(:operands) { [] }

  describe 'initalization' do
    it 'does not require any arguments' do
      expect { Instruction.new }.not_to raise_error(ArgumentError)
    end

    it 'can take a block to be performed when executed' do
      expected = 'the expected result'
      action = lambda { |memory, *operands| expected }
      instruction = Instruction.new &action
      instruction.execute(memory, *operands).should == expected
    end
  end

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
end
