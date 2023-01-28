import std;

void main() {
    int t;
    readf("%d\n", t);

    foreach (_; 0 .. t) {
        auto x = readln.chomp.split.to!(int[]);

        x.sort;

        if (x[1] == x[2]) {
            x[1] = x[0];
            writeln("YES");
            writefln("%(%s %)", x);
        }
        else {
            writeln("NO");
        }
    }
}