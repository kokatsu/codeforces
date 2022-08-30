import std;

void main() {
    int M, N;
    readf("%d %d\n", M, N);

    int a = M / 2, b = M % 2;
    int c = N / 2, d = N % 2;

    int res = a * c * 2 + a * d + b * c;
    res.writeln;
}