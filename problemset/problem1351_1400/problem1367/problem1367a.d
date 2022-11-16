import std;

void main() {
    int t;
    readf("%d\n", t);

    foreach (_; 0 .. t) {
        auto b = readln.chomp.to!(dchar[]);

        auto u = b.front, v = b.back;
        b.popFront, b.popBack;

        auto g = b.group.array;

        dchar[] a;
        a ~= u;

        foreach (x; g) {
            a ~= x[0].repeat(x[1]/2).array;
        }

        a ~= v;

        a.writeln;
    }
}