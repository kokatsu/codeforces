import std;

enum int N = 5;
enum string T = "Timur";

void main() {
    int t;
    readf("%d\n", t);

    int[dchar] X;
    foreach (x; T) ++X[x];

    foreach (_; 0 .. t) {
        int n;
        string s;
        readf("%d\n%s\n", n, s);

        bool isOK;
        if (n == N) {
            int[dchar] Y;
            foreach (x; s) ++Y[x];

            isOK = (X == Y);
        }

        writeln(isOK ? "YES" : "NO");
    }
}