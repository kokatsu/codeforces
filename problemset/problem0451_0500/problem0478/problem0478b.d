import std;

void main() {
    long n, m;
    readf("%d %d\n", n, m);

    long f(long x) {
        return x * (x - 1) / 2;
    }

    long d = n / m, r = n % m;

    long kmin = f(d+1) * r + f(d) * (m - r), kmax = f(n-m+1);
    writeln(kmin, " ", kmax);
}