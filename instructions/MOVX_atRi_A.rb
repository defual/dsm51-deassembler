class MOVX_atRi_A < Instruction
  def mnemonic
    "MOVX @Ri, A"
  end

  def size
    1
  end

  def encoding
    ["1111001i"]
  end

  def format(pc, *opcodes)
    i = opcodes[0] & register_i_mask(encoding[0])
    "movx @R#{i}, A"
  end
end
