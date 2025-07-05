#include <iostream>

int main(){
	int x, y, sum = 0, maior, menor;
	std::cin >> x >> y;

	if (x >= y) {
		maior = x;
		menor = y;
	}
	else {
		maior = y;
		menor = x;
	}

	for (int i = menor; i <= maior; i++) {
		if (i % 13 != 0) {
			sum += i;
		}
	}

	std::cout << sum << std::endl;

	return 0;
}


