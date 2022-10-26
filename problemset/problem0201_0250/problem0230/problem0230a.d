import std;

void main() {
    int s, n;
    readf("%d %d\n", s, n);

    auto x = new int[](n), y = new int[](n);
    foreach (i; 0 .. n) readf("%d %d\n", x[i], y[i]);

    zip(x, y).sort!"a[0] < b[0]";

    bool isOK = true;
    foreach (i; 0 .. n) {
        isOK &= (s > x[i]);
        s += y[i];
    }

    writeln(isOK ? "YES" : "NO");
}