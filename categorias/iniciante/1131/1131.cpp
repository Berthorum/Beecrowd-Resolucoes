#include <iostream>

int main(){
	int golsG, golsI, contG= 0, contI = 0, contE = 0, contGrenais = 0;
	int x = 0;

	while (true) {
		std::cin >> golsI >> golsG;
		contGrenais++;

		if (golsG > golsI) {
			contG++;
		}
		else if (golsI > golsG) {
			contI++;
		}
		else {
			contE++;
		}

		while (x < 1 || x > 2) {
			std::cout << "Novo grenal (1-sim 2-nao)" << std::endl;
			std::cin >> x;
		}

		if (x == 2) break;

		x = 0;
	}

	std::cout << contGrenais << " grenais" << std::endl;
	std::cout << "Inter:" << contI << std::endl;
	std::cout << "Gremio:" << contG << std::endl;
	std::cout << "Empates:" << contE << std::endl;

	if (contI == contE) {
		std::cout << "Nao houve vencedor" << std::endl;
	}
	else {
		if (contI > contG) {
			std::cout << "Inter venceu mais" << std::endl;
		}
		else {
			std::cout << "Gremio venceu mais" << std::endl;
		}
	}



	return 0;
}


