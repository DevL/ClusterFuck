class Register
  attr_reader :value

  def value=(unmasked_value)
    @value = unmasked_value & mask
  end

  private

  def mask
    0b1111_1111_1111_1111
  end
end
