import std;

void main() {
    int n, t;
    readf("%d %d\n", n, t);

    auto s = readln.chomp.to!(dchar[]);

    foreach (_; 0 .. t) {
        bool swapped;

        foreach_reverse (i; 1 .. n) {
            if (swapped) {
                swapped = false;
            }
            else if (s[i-1] == 'B' && s[i] == 'G') {
                s.swapAt(i-1, i);
                swapped = true;
            }
        }
    }

    s.writeln;
}