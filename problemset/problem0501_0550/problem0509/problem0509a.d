import std;

void main() {
    long n;
    readf("%d\n", n);

    long res = 1;
    foreach (i; 1 .. n) {
        res *= n + i - 1;
    }

    foreach (i; 1 .. n) {
        res /= i;
    }

    res.writeln;
}