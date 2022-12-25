import std;

void main() {
    int n, k;
    readf("%d %d\n", n, k);

    auto h = readln.chomp.split.to!(int[]);

    int res, mn = int.max, s;
    foreach (i, x; h) {
        s += x;

        if (i >= k - 1) {
            if (mn > s) res = i.to!int + 2 - k, mn = s;
            s -= h[i+1-k];
        }
    }

    res.writeln;
}