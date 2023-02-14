import std;

enum int N = 26;

void main() {
    int t;
    readf("%d\n", t);

    int[N] pos;
    foreach (_; 0 .. t) {
        string a, b;
        readf("%s\n%s\n", a, b);

        foreach (i; 0 .. N) {
            pos[a[i]-'a'] = i;
        }

        auto len = b.length;

        int res;
        foreach (i; 1 .. len) {
            res += abs(pos[b[i-1]-'a']-pos[b[i]-'a']);
        }

        res.writeln;
    }
}