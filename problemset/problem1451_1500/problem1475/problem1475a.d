import std;

void main() {
    int t;
    readf("%d\n", t);

    foreach (_; 0 .. t) {
        long n;
        readf("%d\n", n);

        while (n % 2 == 0) {
            n /= 2;
        }

        bool isOK = n > 1;
        writeln(isOK ? "YES" : "NO");
    }
}