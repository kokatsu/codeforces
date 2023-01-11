import std;

void main() {
    int n, m;
    readf("%d %d\n", n, m);

    int l = 100;
    auto sieve = new bool[](l+1);
    sieve[2..l+1] = true;
    int d = 2;
    while (d * d <= l) {
        if (sieve[d]) {
            foreach (i; iota(d*d, l+1, d)) {
                sieve[i] = false;
            }
        }
        ++d;
    }

    auto primes = iota(l+1).filter!(i => sieve[i]).array.assumeSorted;

    int nxt = primes.upperBound(n).front;
    writeln(nxt == m ? "YES" : "NO");
}