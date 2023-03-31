import std;

void main() {
    int t;
    readf("%d\n", t);

    foreach (_; 0 .. t) {
        int n, x;
        readf("%d %d\n", n, x);

        auto a = readln.chomp.split.to!(int[]);

        auto odds = a.count!(v => v % 2 == 1).to!int;
        int evens = n - odds;

        int rem = max(1, x-evens);
        if (evens > 0 && rem % 2 == 0) ++rem;

        writeln(odds >= rem && rem % 2 == 1 ? "Yes" : "No");
    }
}