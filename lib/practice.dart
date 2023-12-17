// positional argument
// note : we make second argument optional with default value
void add(a, [b = 4]) {
  print(a + b);
}

void demo() {
  add(1, 6);
}

//named argument
void add2({a, b}) {
  print(a + b);
}

void demo2() {
  add2(a: 1, b: 4);
}
