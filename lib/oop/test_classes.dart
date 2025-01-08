class A {
  String a;
  A(this.a);
}

class B extends A {
  String b;
  B(this.b, String a) : super(a);
}

class C extends B {
  String c;
  C(this.c, String b, String a) : super(b, a);
}

void main() {
  var c = C('c', 'b', 'a');
  print(c.a);
  print(c.b);
  print(c.c);
}
