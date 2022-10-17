import std;

void main() {
    int n;
    readf("%d\n", n);

    int l = 101;
    auto home = new int[](l), guest = new int[](l);
    foreach (_; 0 .. n) {
        int h, a;
        readf("%d %d\n", h, a);

        ++home[h], ++guest[a];
    }

    int res;
    foreach (i; 0 .. l) {
        res += home[i] * guest[i];
    }

    res.writeln;
}