import std;

void main() {
    int n;
    real l;
    readf("%d %f\n", n, l);

    auto a = readln.chomp.split.to!(real[]);

    a.sort;

    real res = max(a[0], l-a[n-1]);
    foreach (i; 1 .. n) {
        res = max(res, (a[i]-a[i-1])/2.0);
    }

    writefln("%.15f", res);
}