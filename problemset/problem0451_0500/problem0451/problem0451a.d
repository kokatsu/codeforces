import std;

void main() {
    int n, m;
    readf("%d %d\n", n, m);

    writeln(min(n, m) % 2 == 1 ? "Akshat" : "Malvika");
}