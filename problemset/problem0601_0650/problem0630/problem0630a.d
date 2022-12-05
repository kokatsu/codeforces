import std;

void main() {
    ulong n;
    readf("%d\n", n);

    ulong res = powmod(5uL, n, 100uL);
    res.writeln;
}