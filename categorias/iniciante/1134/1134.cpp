#include <iostream>
#include <array>

int main(){
	int fuel;
	std::array<int, 3> typeFuel { 0,0,0 };
	enum Types { Alcool, Gasolina, Diesel };

	while (true) {
		std::cin >> fuel;
		if (fuel >= 1 && fuel <= 3) {
			typeFuel[fuel - 1]++;
		}
		else if (fuel == 4) {
			break;
		}
	}

	std::cout << "MUITO OBRIGADO" << std::endl;
	std::cout << "Alcool: " << typeFuel[Alcool] << std::endl;
	std::cout << "Gasolina: " << typeFuel[Gasolina] << std::endl;
	std::cout << "Diesel: " << typeFuel[Diesel] << std::endl;
	
	return 0;
}
