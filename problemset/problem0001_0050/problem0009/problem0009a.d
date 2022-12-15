import std;

void main() {
    int Y, W;
    readf("%d %d\n", Y, W);

    int N = 6, D = N - max(Y, W) + 1;

    int g = gcd(N, D);
    N /= g, D /= g;

    writefln("%d/%d", D, N);
}