require_relative '../lib/register.rb'

describe Register do
  describe '#value=' do
    it 'masks everything but the lower 16 bits' do
      register = Register.new
      register.value = 65535
      register.value.should == 0b1111111111111111
      register.value = 65536
      register.value.should == 0b0
      register.value = 65537
      register.value = 0b1
    end
  end
end
