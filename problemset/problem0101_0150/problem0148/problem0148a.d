import std;

void main() {
    auto k = new int[](4);
    foreach (i; 0 .. 4) readf("%d\n", k[i]);

    int d;
    readf("%d\n", d);

    auto dragons = new bool[](d+1);
    foreach (x; k) {
        int p = x;
        while (p <= d) {
            dragons[p] = true;
            p += x;
        }
    }

    auto res = dragons.count(true);
    res.writeln;
}