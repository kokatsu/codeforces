import std;

void main() {
    int t;
    readf("%d\n", t);

    foreach (_; 0 .. t) {
        int n;
        readf("%d\n", n);

        auto a = readln.chomp.split.to!(int[]);

        auto c = a.count!(x => x % 2 == 1);
        writeln(c == n ? "Yes" : "No");
    }
}