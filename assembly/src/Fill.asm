// Runs an infinite loop that listens to the keyboard input.
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel;
// the screen should remain fully black as long as the key is pressed.
// When no key is pressed, the program clears the screen, i.e. writes
// "white" in every pixel;

  @screenIndex
  M = 0

  @currentColor
  M = 0

  @currentScreenAddress

(LISTENKEYBOARD)

  @KBD
  D = M

  @PAINTSCREEN
  D; JEQ
  D = -1

(PAINTSCREEN)

  @currentColor
  M = D

  @screenIndex
  D = M

  @SCREEN
  D = A + D

  @currentScreenAddress
  M = D

  @currentColor
  D = M

  @currentScreenAddress
  A = M
  M = D

  @screenIndex
  M = M + 1

  D = M
  @8192
  D = D - A

  @LISTENKEYBOARD
  D; JLT

  @screenIndex
  M = 0

  @LISTENKEYBOARD
  0; JMP
