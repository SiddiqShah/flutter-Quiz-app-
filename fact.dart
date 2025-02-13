int fact(int f) {
  var s = 1;

  for (var i = 1; i <= f; i++) {
    s = s * i;
  }
  return s;
}

void main() {
  fact(5);
}
