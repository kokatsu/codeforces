import std;

void main() {
    int t;
    readf("%d\n", t);

    foreach (_; 0 .. t) {
        int a;
        readf("%d\n", a);

        writeln(360 % (180 - a)  == 0 ? "YES" : "NO");
    }
}