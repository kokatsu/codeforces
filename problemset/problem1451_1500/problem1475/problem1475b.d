import std;

enum int L = 10 ^^ 6 + 1;
enum int A = 2020, B = 2021;

void main() {
    auto isSum = new bool[](L);
    isSum[0] = true;
    foreach (i; 1 .. L) {
        if (i >= A && isSum[i-A]) isSum[i] = true;
        if (i >= B && isSum[i-B]) isSum[i] = true;
    }

    int t;
    readf("%d\n", t);

    foreach (_; 0 .. t) {
        int n;
        readf("%d\n", n);

        writeln(isSum[n] ? "YES" : "NO");
    }
}