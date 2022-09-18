import std;

void main() {
    int n;
    string s;
    readf("%d\n%s\n", n, s);

    int cnt;
    foreach (x; s) {
        cnt += (x == 'A' ? 1 : -1);
    }

    string res = "Friendship";
    if (cnt > 0) res = "Anton";
    if (cnt < 0) res = "Danik";

    res.writeln;
}