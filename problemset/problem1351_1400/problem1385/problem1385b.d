import std;

void main() {
    int t;
    readf("%d\n", t);

    foreach (_; 0 .. t) {
        int n;
        readf("%d\n", n);

        auto a = readln.chomp.split.to!(int[]);

        int[] res;
        auto used = new bool[](n+1);
        foreach (x; a) {
            if (!used[x]) {
                res ~= x;
                used[x] = true;
            }
        }

        writefln("%(%s %)", res);
    }
}