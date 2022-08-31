import std;

void main() {
    int n;
    readf("%d\n", n);

    int res, lim = 2;
    foreach (_; 0 .. n) {
        int s = readln.chomp.split.to!(int[]).sum;
        if (s >= lim) ++res;
    }

    res.writeln;
}