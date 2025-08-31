#include <iomanip>
#include <iostream>

int main() {

    char op;
    int col;
    double a[12][12], res = 0.0;

    std::cin >> col;
    std::cin >> op;

    for (int i = 0; i < 12; i++) {
        for (int j = 0; j < 12; j++) {
            std::cin >> a[i][j];
            if (j == col) {
                res += a[i][j];
            }
        }
    }

    if (op == 'M') {
        res = res / 12.0;
    }

    std::cout << std::fixed << std::setprecision(1)  << res << std::endl;

    return 0;
}