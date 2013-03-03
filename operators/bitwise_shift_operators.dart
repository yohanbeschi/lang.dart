/// Author: Yohan Beschi

/**
 * Entry Point 
 */
void main() {
  int value = 0xa9;   //1010 1001
  int bitmask = 0xf0; //1111 0000

  // 1010 1001
  //&1111 0000 
  //----------
  // 1010 0000
  assert((value & bitmask)  == 0xa0);  // AND
  
  // 1010 1001
  //&0000 1111 (=~1111 0000) 
  //----------
  // 0000 1001
  assert((value & ~bitmask) == 0x09);  // AND NOT
  
  // 1010 1001
  //|1111 0000
  //----------
  // 1111 1001
  assert((value | bitmask)  == 0xf9);  // OR
  
  // 1010 1001
  //^1111 0000
  //----------
  // 0101 1001
  assert((value ^ bitmask)  == 0x59);  // XOR
  
  // 5 * 2 = 10 
  assert((5 << 1) == 10); // Shift left
  
  // 10 / 2 = 5
  assert((10 >> 1) == 5);  // Shift right
}
