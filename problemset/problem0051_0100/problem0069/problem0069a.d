import std;

void main() {
    int n;
    readf("%d\n", n);

    int X, Y, Z;

    foreach (_; 0 .. n) {
        int x, y, z;
        readf("%d %d %d\n", x, y, z);

        X += x, Y += y, Z += z;
    }

    writeln(X == 0 && Y == 0 && Z == 0 ? "YES" : "NO");
}