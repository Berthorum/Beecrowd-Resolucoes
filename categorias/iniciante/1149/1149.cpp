#include <iostream>

int main(){
	int a, n, cont = 0;

	std::cin >> a >> n;

	while (n <= 0) {
		std::cin >> n;
	}

	for (int i = 0; i < n; i++) {
		cont += (a + i);
	}

	std::cout << cont << std::endl;
}