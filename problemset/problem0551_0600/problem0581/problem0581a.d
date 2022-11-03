import std;

void main() {
    int a, b;
    readf("%d %d\n", a, b);

    int x = min(a, b);

    a -= x, b -= x;

    int y = max(a, b) / 2;

    writeln(x, " ", y);
}