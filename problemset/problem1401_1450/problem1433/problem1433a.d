import std;

void main() {
    int t;
    readf("%d\n", t);

    ulong f(ulong x) {
        return x * (x + 1) / 2;
    }

    foreach (_; 0 .. t) {
        string x;
        readf("%s\n", x);

        ulong res = (x[0] - '1') * f(4uL);
        res += f(x.length);

        res.writeln;
    }
}