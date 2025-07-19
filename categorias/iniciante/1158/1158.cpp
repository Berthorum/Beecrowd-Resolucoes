#include <iostream>

int main() {
	int n, x, y, sum = 0, cont = 0;

	std::cin >> n;

	for (int i = 1; i <= n; i++) {
		std::cin >> x >> y;

		while (cont < y) {
			if (x % 2 != 0) {
				sum += x;
				cont++;
			}
			x++;
		}

		std::cout << sum << std::endl;
		
		sum = 0;
		cont = 0;
	}
}
