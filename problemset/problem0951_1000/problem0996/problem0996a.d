import std;

void main() {
    int n;
    readf("%d\n", n);

    int[] bills = [1, 5, 10, 20, 100];

    int res;
    foreach_reverse (b; bills) {
        res += n / b;
        n %= b;
    }

    res.writeln;
}