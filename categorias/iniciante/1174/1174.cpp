#include <iostream>
#include <iomanip>

int main() {
	float a[100];

	for (int i = 0; i < 100; i++) {
		std::cin >> a[i];
		if (a[i] <= 10) {
			std::cout << "A[" << i << "]" << " = " << std::fixed << std::setprecision(1) << a[i]  << std::endl;
		}
	}
}
