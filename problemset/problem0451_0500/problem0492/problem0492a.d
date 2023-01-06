import std;

void main() {
    int n;
    readf("%d\n", n);

    int f(int x) {
        return x * (x + 1) / 2;
    }

    int res, num;
    while (num + f(res+1) <= n) {
        ++res;
        num += f(res);
    }

    res.writeln;
}