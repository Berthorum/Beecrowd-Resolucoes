#include <iostream>

int main() {
	int n[10], v;

	std::cin >> v;

	n[0] = v;
	std::cout << "N[0]" << " = " << n[0] << std::endl;

	for (int i = 1; i < 10; i++) {
		n[i] = n[i - 1] * 2;
		std::cout << "N[" << i << "]" << " = " << n[i] << std::endl;
	}
}
