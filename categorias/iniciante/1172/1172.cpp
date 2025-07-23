#include <iostream>

int main() {
	int x[10];

	for (int i = 0; i < 10; i++) {
		std::cin >> x[i];
		if (x[i] <= 0) {
			x[i] = 1;
		}

		std::cout << "X[" << i << "]" << " = " << x[i] << std::endl;
	}
}
