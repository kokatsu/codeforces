import std;

void main() {
    int n, m, k;
    readf("%d %d %d\n", n, m, k);

    writeln(n <= min(m, k) ? "Yes" : "No");
}