#include <iostream>

int main() {
	int n, x, cont = 0;

	std::cin >> n;

	for (int i = 0; i < n; i++) {
		std::cin >> x;

		for (int j = 1; j <= x; j++) {
			if (x % j == 0) {
				cont++;
			}
		}

		if (cont == 2) {
			std::cout << x << " eh primo" << std::endl;
		}
		else {
			std::cout << x << " nao eh primo" << std::endl;
		}
		cont = 0;
	}
}
