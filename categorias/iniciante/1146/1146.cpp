#include <iostream>

int main(){
	int n = -1;

	while (true) {
		std::cin >> n;

		if (n == 0) break;

		for (int i = 1; i <= n; i++) {
			std::cout << i;

			if (i != n) {
				std::cout << " ";
			}
		}

		std::cout << std::endl;
	}
}