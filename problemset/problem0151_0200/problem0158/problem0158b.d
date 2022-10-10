import std;

void main() {
    int n;
    readf("%d\n", n);

    auto s = readln.chomp.split.to!(int[]);

    s.sort;

    auto G = s.group.array;

    auto T = new int[](5);
    foreach (g; G) {
        T[g[0]] = g[1].to!int;
    }

    int res = T[4];

    int a = min(T[1], T[3]);
    T[1] -= a, T[3] -= a;
    res += a + T[3];

    int b = T[2] / 2;
    T[2] -= b * 2;
    res += b;

    if (T[2] == 1) {
        int c = min(2, T[1]);
        T[1] -= c;
        ++res;
    }

    res += (T[1] + 3) / 4;

    res.writeln;
}