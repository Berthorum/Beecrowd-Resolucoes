#include <iostream>

int main() {
	int n, x, sum = 0;

	std::cin >> n;

	for (int i = 0; i < n; i++) {
		std::cin >> x;

		for (int j = 1; j < x; j++) {
			if (x % j == 0) {
				sum += j;
			}
		}

		if (sum == x) {
			std::cout << x << " eh perfeito" << std::endl;
		}
		else {
			std::cout << x << " nao eh perfeito" << std::endl;
		}
		sum = 0;
	}
}
