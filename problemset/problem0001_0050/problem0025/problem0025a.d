import std;

void main() {
    int n;
    readf("%d\n", n);

    auto a = readln.chomp.split.to!(int[]);

    auto cnt = a.count!"a % 2 == 0";
    bool findOdd = (n - cnt == 1);
    foreach (i, x; a) {
        if (findOdd == (x % 2 == 1)) {
            writeln(i+1);
        }
    }
}