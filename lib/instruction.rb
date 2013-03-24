class Instruction
  def initialize
    @action = Proc.new if block_given?
  end

  def execute(memory, *operands)
    if @action
      @action.call memory, *operands
    else
      raise NotImplementedError
    end
  end
end
