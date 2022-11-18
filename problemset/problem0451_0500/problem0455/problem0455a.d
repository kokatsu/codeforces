import std;

void main() {
    int n;
    readf("%d\n", n);

    auto a = readln.chomp.split.to!(int[]);

    a.sort;

    int mx = a.back;

    auto G = a.group.array;

    auto b = new long[](mx+1);
    foreach (g; G) {
        b[g[0]] = g[0].to!long * g[1].to!long;
    }

    auto dp = new long[](mx+1);
    dp[1] = b[1];
    foreach (i; 2 .. mx+1) {
        dp[i] = max(dp[i-1], dp[i-2]+b[i]);
    }

    long res = dp[mx];
    res.writeln;
}