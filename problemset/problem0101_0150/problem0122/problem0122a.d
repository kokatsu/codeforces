import std;

void main() {
    int n;
    readf("%d\n", n);

    foreach (i; 1 .. n+1) {
        int num = i;
        bool isOK = true;
        while (num > 0) {
            int d = num % 10;
            isOK &= (d == 4 || d == 7);
            num /= 10;
        }

        if (isOK) {
            if (n % i == 0) {
                writeln("YES");
                return;
            }
        }
    }

    writeln("NO");
}