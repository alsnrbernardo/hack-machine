// Multiplies the contents of Registers R0 and R1, storing the result in R2.

  @accumulator
  M = 0

  @times
  M = 0

(LOOP)

  @accumulator
  D = M

  @R1
  D = D - M
  @CHECK
  D; JEQ

  @accumulator
  M = M + 1

  @LOOP
  0; JMP

(CHECK)

  @accumulator
  D = M
  M = 0
  @R2
  M = M + D

  @times
  M = M + 1
  D = M

  @R0
  D = D - M
  @LOOP
  D; JLT

(END)

  @END
  0; JMP
