import std;

void main() {
    string s;
    readf("%s\n", s);

    auto len = s.length;

    auto dp = new int[](len);
    foreach (i; 1 .. len) {
        dp[i] += dp[i-1];
        if (s[i] == s[i-1]) ++dp[i];
    }

    int m;
    readf("%d\n", m);

    foreach (_; 0 .. m) {
        int l, r;
        readf("%d %d\n", l, r);

        int res = dp[r-1] - dp[l-1];
        res.writeln;
    }
}