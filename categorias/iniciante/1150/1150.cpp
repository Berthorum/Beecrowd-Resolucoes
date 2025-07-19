#include <iostream>

int main(){
	int x, z = 0, cont = 1, aux;
	std::cin >> x;

	aux = x;

	while (z <= x) {
		std::cin >> z;
	}

	for (int i = x + 1; i < z; i++) {
		aux += i;
		cont++;

		if (aux > z) break;
	}

	std::cout << cont << std::endl;
}