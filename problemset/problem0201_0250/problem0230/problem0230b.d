import std;

void main() {
    long n;
    readf("%d\n", n);

    auto x = readln.chomp.split.to!(long[]);

    uint l = 10 ^^ 6 + 1;
    auto sieve = new bool[](l);
    sieve[2..l] = true;
    uint d = 2;
    while (d * d < l) {
        if (sieve[d]) {
            foreach (i; iota(d*d, l, d)) {
                sieve[i] = false;
            }
        }
        ++d;
    }

    auto primes = iota(l).filter!(i => sieve[i]).array;

    bool[long] list;
    foreach (prime; primes) {
        long p = prime.to!long;
        list[p*p] = true;
    }

    foreach (a; x) {
        bool isOK;
        if (a in list) isOK = true;

        writeln(isOK ? "YES" : "NO");
    }
}