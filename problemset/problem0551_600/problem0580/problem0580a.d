import std;

void main() {
    int n;
    readf("%d\n", n);

    auto a = readln.chomp.split.to!(int[]);

    int res, cnt, pre;
    foreach (x; a) {
        if (x >= pre) res = max(res, ++cnt);
        else cnt = 1;

        pre = x;
    }

    res.writeln;
}