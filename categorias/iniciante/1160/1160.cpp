#include <iostream>

int main() {
	int t, pa, pb, years;
	double g1, g2;

	std::cin >> t;

	for (int i = 0; i < t; i++) {
		years = 0;

		std::cin >> pa >> pb >> g1 >> g2;

		while (years <= 100) {
			pa = pa + (g1 / 100 * pa);
			pb = pb + (g2 / 100 * pb);

			years++;

			if (years > 100) {
				std::cout << "Mais de 1 seculo." << std::endl;
				break;
			}

			if (pa > pb) {
				std::cout << years << " anos." << std::endl;
				break;
			}
		}
	}
}
