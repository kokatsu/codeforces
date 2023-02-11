import std;

void main() {
    ulong n;
    readf("%d\n", n);

    ulong res = powmod(1378uL, n, 10uL);
    res.writeln;
}