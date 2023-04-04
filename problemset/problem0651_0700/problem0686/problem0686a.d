import std;

void main() {
    long n, x;
    readf("%d %d\n", n, x);

    long ice = x, num;
    foreach (_; 0 .. n) {
        dchar op;
        long cnt;
        readf("%c %d\n", op, cnt);

        if (op == '+') {
            ice += cnt;
        }
        else {
            if (ice >= cnt) ice -= cnt;
            else ++num;
        }
    }

    writeln(ice, " ", num);
}