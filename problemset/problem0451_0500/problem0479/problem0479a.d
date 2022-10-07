import std;

void main() {
    int a, b, c;
    readf("%d\n%d\n%d\n", a, b, c);

    int u = a + b, v = b + c;
    int x = a * b, y = b * c;

    int res = max(u+c, u*c, a+v, a*v, x+c, x*c, a+y, a*y);
    res.writeln;
}