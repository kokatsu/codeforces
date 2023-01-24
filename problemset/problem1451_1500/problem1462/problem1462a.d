import std;

void main() {
    int t;
    readf("%d\n", t);

    foreach (_; 0 .. t) {
        int n;
        readf("%d\n", n);

        auto b = readln.chomp.split.to!(int[]);

        int l, r = n - 1;
        auto res = new int[](n);
        foreach (i; 0 .. n) {
            res[i] = (i % 2 == 0 ? b[l++] : b[r--]);
        }

        writefln("%(%s %)", res);
    }
}