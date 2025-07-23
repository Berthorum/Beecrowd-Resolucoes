#include <iostream>
#include <iomanip>

int main() {
	double t, n[100];

	std::cin >> t;

	n[0] = t;

	std::cout << "N[0] = " << std::fixed << std::setprecision(4) << n[0] << std::endl;

	for (int i = 1; i < 100; i++) {
		n[i] = n[i - 1] / 2;

		std::cout << "N[" << i << "] = " << std::fixed << std::setprecision(4) << n[i] << std::endl;
	}
}
