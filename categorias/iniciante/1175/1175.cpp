#include <iostream>

int main() {
	int n[20], aux, pos = 0, tam;

	tam = sizeof(n) / sizeof(int);

	for (int i = 0; i < tam; i++) {
		std::cin >> n[i];
	}

	for (int i = tam - 1; i >= 0; i--) {

		if (pos > i) break;

		aux = n[i];
		n[i] = n[pos];
		n[pos] = aux;

		pos++;
	}

	for (int i = 0; i < tam; i++) {
		std::cout << "N[" << i << "]" << " = " << n[i] << std::endl;
	}
}
