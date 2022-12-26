import std;

void main() {
    int n, m;
    readf("%d %d\n", n, m);

    auto cnts = new int[](m+1);
    cnts[] = int.max;

    void f(int num, int cnt = 0) {
        if (num > m) {
            cnts[m] = min(cnts[m], cnt+num-m);
        }
        else {
            if (cnts[num] > cnt) {
                cnts[num] = cnt;
                if (num > 0) {
                    f(num*2, cnt+1);
                    f(num-1, cnt+1);
                }
            }
        }
    }

    f(n);

    int res = cnts[m];
    res.writeln;
}