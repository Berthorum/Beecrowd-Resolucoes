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

	av1 = getValidNumber();
	av2 = getValidNumber();

	float media = (av1 + av2) / 2;
	std::cout << "media = " << std::fixed << std::setprecision(2) << media << std::endl;

	return 0;
}


