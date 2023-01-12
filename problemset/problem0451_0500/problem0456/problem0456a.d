import std;

void main() {
    int n;
    readf("%d\n", n);

    auto a = new int[](n), b = new int[](n);
    foreach (i; 0 .. n) readf("%d %d\n", a[i], b[i]);

    zip(a, b).sort!"a[0] < b[0]";

    bool isHappy;
    foreach (i; 0 .. n-1) {
        if (a[i] == a[i+1]) continue;
        isHappy |= (b[i] > b[i+1]);
    }

    writeln(isHappy ? "Happy Alex" : "Poor Alex");
}