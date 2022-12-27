import std;

enum int D = 10 ^^ 3;

void main() {
    int t;
    readf("%d\n", t);

    int f(int x) {
        int ret;
        while (x > 0) {
            ret += x % 10;
            x /= 10;
        }
        return ret;
    }

    foreach (i; 0 .. t) {
        int n;
        readf("%d\n", n);

        writeln(f(n%D) == f(n/D) ? "YES" : "NO");
    }
}