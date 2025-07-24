#include <iostream>
#include <string>
#include <array>

void printArray(const std::array<int, 5> &arrayT, std::string tipo) {  
	for (int i = 0; i < arrayT.size(); i++) {
		if (arrayT.at(i) != 0) {
			std::cout << tipo << "[" << i << "]" << " = " << arrayT.at(i) << std::endl;
		}
	}
}

void resetArray(std::array<int, 5>& arrayT) {
	for (int i = 0; i < 5; i++) {
		arrayT[i] = 0;
	}
}

int main() {
	int n, flagP = 0, flagI = 0;
	std::array<int, 5> par, impar;

	for (int i = 1; i <= 15; i++) {
		std::cin >> n;

		if (n % 2 == 0) {
			par[flagP] = n;
			flagP++;
		}
		else {
			impar[flagI] = n;
			flagI++;
		}

		if (flagP == 5) {
			printArray(par, "par");
			resetArray(par);

			flagP = 0;
		}
		else if(flagI == 5) {
			printArray(impar, "impar");
			resetArray(impar);

			flagI = 0;
		}
	}

	if (flagI != 0) {
		printArray(impar, "impar");
	}

	if (flagP != 0) {
		printArray(par, "par");
	}

}
