import std;

void main() {
    int t;
    readf("%d\n", t);

    foreach (_; 0 .. t) {
        int n, k;
        readf("%d %d\n", n, k);

        auto a = readln.chomp.split.to!(int[]);
        auto b = readln.chomp.split.to!(int[]);

        auto x = a.heapify!"a > b";
        auto y = b.heapify!"a < b";
        foreach (i; 0 .. k) {
            auto u = x.front, v = y.front;
            if (u >= v) continue;

            x.popFront, y.popFront;
            x.insert(v), y.insert(u);
        }

        int res = x.sum;
        res.writeln;
    }
}