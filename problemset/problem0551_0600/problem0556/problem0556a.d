import std;

void main() {
    int n;
    string s;
    readf("%d\n%s\n", n, s);

    auto cnt0 = s.count('0'), cnt1 = s.count('1');

    int res = n - min(cnt0, cnt1).to!int * 2;
    res.writeln;
}