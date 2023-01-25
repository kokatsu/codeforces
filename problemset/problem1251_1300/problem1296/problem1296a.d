import std;

void main() {
    int t;
    readf("%d\n", t);

    foreach (_; 0 .. t) {
        int n;
        readf("%d\n", n);

        auto a = readln.chomp.split.to!(int[]);

        auto c = a.count!"a % 2 == 1";

        bool isOK = !(c == 0 || (c == n && n % 2 == 0));
        writeln(isOK ? "YES" : "NO");
    }
}