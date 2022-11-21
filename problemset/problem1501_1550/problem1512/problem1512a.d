import std;

void main() {
    int t;
    readf("%d\n", t);

    foreach (_; 0 .. t) {
        int n;
        readf("%d\n", n);

        auto a = readln.chomp.split.to!(int[]);

        if (a[0] == a[1] && a[1] == a[2]) {
            foreach (i; 3 .. n) {
                if (a[i] != a[0]) {
                    writeln(i+1);
                }
            }
        }
        else {
            if (a[0] == a[1]) writeln(3);
            if (a[0] == a[2]) writeln(2);
            if (a[1] == a[2]) writeln(1);
        }
    }
}