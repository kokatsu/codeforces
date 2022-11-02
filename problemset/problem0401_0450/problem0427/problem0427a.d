import std;

void main() {
    int n;
    readf("%d\n", n);

    auto a = readln.chomp.split.to!(int[]);

    int res, cnt;
    foreach (x; a) {
        if (x == -1) {
            if (cnt == 0) ++res;
            else --cnt;
        }
        else {
            cnt += x;
        }
    }

    res.writeln;
}