import std;

void main() {
    auto a = readln.chomp.split.to!(int[]);

    int n = a.front;
    a.popFront;

    auto cnts = new int[](n+1);
    foreach (x; a) {
        if (x <= n) cnts[x] = 1;
    }

    foreach (i; 0 .. n) {
        if (cnts[i] == 0) continue;

        foreach (x; a) {
            if (i + x > n) continue;

            cnts[i+x] = max(cnts[i+x], cnts[i]+1);
        }
    }

    int res = cnts[n];
    res.writeln;
}