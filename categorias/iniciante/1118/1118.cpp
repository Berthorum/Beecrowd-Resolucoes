#include <iostream>
#include <iomanip>

float getValidNumber() {
	float aux = 0;
	while (true) {
		std::cin >> aux;

		if (aux >= 0 && aux <= 10) {
			return aux;
		}
		else {
			std::cout << "nota invalida" << std::endl;
		}
	}
}

int main(){
	float av1, av2;
	int x = 0;

	while (true) {
		av1 = getValidNumber();
		av2 = getValidNumber();

		float media = (av1 + av2) / 2;
		std::cout << "media = " << std::fixed << std::setprecision(2) << media << std::endl;

		while (x < 1 || x > 2) {
			std::cout << "novo calculo (1-sim 2-nao)" << std::endl;
			std::cin >> x;
		}

		if (x == 2) break;

		x = 0;
	}

	return 0;
}