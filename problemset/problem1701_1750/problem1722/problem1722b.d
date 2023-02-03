import std;

void main() {
    int t;
    readf("%d\n", t);

    foreach (_; 0 .. t) {
        int n;
        string x, y;
        readf("%d\n%s\n%s\n", n, x, y);

        bool isOK = true;
        foreach (u, v; zip(x, y)) {
            if ((u == 'R' || v == 'R') && u != v) {
                isOK = false;
            }
        }

        writeln(isOK ? "YES" : "NO");
    }
}