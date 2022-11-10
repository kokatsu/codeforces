import std;

void main() {
    int t;
    readf("%d\n", t);

    foreach (_; 0 .. t) {
        int n;
        readf("%d\n", n);

        auto a = readln.chomp.split.to!(int[]);

        a.sort;

        bool isOK = true;
        foreach (i; 1 .. n) {
            isOK &= (a[i] <= a[i-1] + 1);
        }

        writeln(isOK ? "YES" : "NO");
    }
}