#include <iostream>
#include <iomanip>

int main() {
	int l;
	double res = 0, m[12][12], num;
	char t;

	std::cin >> l;
	std::cin >> t;

	for (int i = 0; i < 12; i++) {
		for (int j = 0; j < 12; j++) {
			std::cin >> num;
			m[i][j] = num;
		}
	}

	for (int j = 0; j < 12; j++) {
		res += m[l][j];
	}

	if (t == 'S') {
		std::cout <<  std::fixed << std::setprecision(1) << res << std::endl;
	}
	else {
		std::cout << std::fixed << std::setprecision(1) << res / 12 << std::endl;
	}

	return 0;
}
