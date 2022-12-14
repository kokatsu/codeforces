import std;

void main() {
    int t;
    readf("%d\n", t);

    foreach (_; 0 .. t) {
        int n;
        readf("%d\n", n);

        auto a = readln.chomp.split.to!(int[]);

        int total, one, two;
        foreach (x; a) {
            total += x;
            (x == 1 ? one : two) += 1;
        }

        int d = total / 2, r = total % 2;
        bool isOK;
        foreach (i; 0 .. two+1) {
            int rem = d - i * 2;
            if (rem < 0) break;

            isOK |= (rem <= one);
        }

        isOK &= (r == 0);

        writeln(isOK ? "YES" : "NO");
    }
}