#include <iostream>

int main() {
	int t, cont = 0, n[1000];

	std::cin >> t;

	for (int i = 0; i < 1000; i++) {
		if (cont == t) {
			cont = 0;
		}
		n[i] = cont;
		cont++;
	}

	for (int i = 0; i < 1000; i++) {
		std::cout << "N[" << i << "] = " << n[i] << std::endl;
	}
}
