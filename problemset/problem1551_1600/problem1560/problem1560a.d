import std;

void main() {
    int L = 1001;
    auto A = new int[](L);
    int num, idx = 1;
    while (idx < L) {
        ++num;
        if (num % 3 == 0 || num % 10 == 3) continue;

        A[idx++] = num;
    }

    int t;
    readf("%d\n", t);

    foreach (_; 0 .. t) {
        int k;
        readf("%d\n", k);

        int res = A[k];
        res.writeln;
    }
}