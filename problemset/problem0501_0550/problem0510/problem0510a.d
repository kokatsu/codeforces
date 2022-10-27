import std;

void main() {
    int n, m;
    readf("%d %d\n", n, m);

    auto a = '#'.repeat(m);
    auto b = '.'.repeat(m-1);

    foreach (i; 0 .. n) {
        if (i % 2 == 0) {
            a.writeln;
        }
        else {
            if (i % 4 == 1) writeln(b, "#");
            else writeln("#", b);
        }
    }
}