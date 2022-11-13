import std;

void main() {
    int n;
    readf("%d\n", n);

    auto sieve = new bool[](n+1);
    sieve[2..n+1] = true;
    int d = 2;
    while (d * d <= n) {
        if (sieve[d]) {
            foreach (i; iota(d*d, n+1, d)) {
                sieve[i] = false;
            }
        }
        ++d;
    }

    foreach (i; 4 .. n) {
        if (sieve[i]) continue;

        if (!sieve[n-i]) {
            writeln(i, " ", n-i);
            return;
        }
    }
}