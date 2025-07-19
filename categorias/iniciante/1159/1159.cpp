#include <iostream>

int main() {
	int n, sum = 0, cont = 0;

	std::cin >> n;

	while(n != 0) {
		while (cont < 5) {
			if (n % 2 == 0) {
				sum += n;
				cont++;
			}
			n++;
		}

		std::cout << sum << std::endl;

		std::cin >> n;
		
		sum = 0;
		cont = 0;
	}
}
