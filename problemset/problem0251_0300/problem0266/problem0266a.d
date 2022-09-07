import std;

void main() {
    int N;
    string S;
    readf("%d\n%s\n", N, S);

    int res;
    foreach (i; 1 .. N) {
        if (S[i-1] == S[i]) ++res;
    }

    res.writeln;
}