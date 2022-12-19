import std;

void main() {
    int m, s;
    readf("%d %d\n", m, s);

    dchar[] mx;
    int rem = s;
    foreach (i; 0 .. m) {
        int t = min(rem, 9);
        mx ~= to!dchar(t+'0');
        rem -= t;
    }

    if (rem == 0) {
        auto mn = mx.dup;
        mn.reverse;

        auto pos = mn.countUntil!"a > '0'";
        if (mn.length == 1) pos = 0;

        if (pos >= 0) {
            --mn[pos], ++mn[0];

            writeln(mn, " ", mx);
            return;
        }
    }

    writeln(-1, " ", -1);
}