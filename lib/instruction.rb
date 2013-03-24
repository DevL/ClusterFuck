class Instruction
  def self.performing
    instruction = new
    instruction.instance_variable_set(:@action, Proc.new) if block_given?
    instruction
  end

  def execute(memory, *operands)
    if @action
      @action.call memory, *operands
    else
      raise NotImplementedError
    end
  end
end
