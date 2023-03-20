import std;

void main() {
    int t;
    readf("%d\n", t);

    foreach (_; 0 .. t) {
        int a, b, c;
        readf("%d %d %d\n", a, b, c);

        if (a > b) swap(a, b);

        int d = b - a;
        if (d * 2 >= b && d * 2 >= c) {
            if (d >= c) writeln(c+d);
            else writeln(c-d);
            continue;
        }

        writeln(-1);
    }
}