#include <iomanip>
#include <iostream>

int main() {

    char op;
    int cont = 0;;
    double m[12][12], res = 0.0;

    std::cin >> op;

    for (int i = 0; i < 12; i++) {
        for (int j = 0; j < 12; j++) {
            std::cin >> m[i][j];
            if (j < i) {
                res += m[i][j];
                cont++;
            }
        }
    }

    if (op == 'M') {
        res /= cont;
    }

    std::cout << std::fixed << std::setprecision(1)  << res << std::endl;

    return 0;
}