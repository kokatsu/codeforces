import std;

void main() {
    int t;
    readf("%d\n", t);

    foreach (_; 0 .. t) {
        int n;
        readf("%d\n", n);

        if (n % 4 == 0) {
            writeln("YES");

            auto a = iota(1, n+1).array;
            auto o = a.stride(2).array, e = a[1..$].stride(2).array;
            o[$-1] += n / 2;

            auto res = e ~ o;
            writefln("%(%s %)", res);
        }
        else {
            writeln("NO");
        }
    }
}