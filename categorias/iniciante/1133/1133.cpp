#include <iostream>

int main(){
	int x, y, maior, menor;
	std::cin >> x >> y;

	if (x >= y) {
		maior = x;
		menor = y;
	}
	else {
		maior = y;
		menor = x;
	}

	for (int i = menor + 1; i < maior; i++) {
		if (i % 5 == 2 || i % 5 == 3) {
			std::cout << i << std::endl;
		}
	}

	return 0;
}


