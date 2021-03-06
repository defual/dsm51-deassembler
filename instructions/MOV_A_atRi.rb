class MOV_A_atRi < Instruction
  def mnemonic
    "MOV A, @Ri"
  end

  def size
    1
  end

  def encoding
    ["1110011i"]
  end

  def format(pc, *opcodes)
    i = opcodes[0] & register_i_mask(encoding[0])
    "mov A, @R#{i}"
  end
end
