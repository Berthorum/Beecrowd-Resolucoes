#include <iostream>
#include <vector>

int main() {
	int n,num, menor, posicao = 0;
	std::cin >> n;

	std::vector<int> seq;

	for (int i = 0; i < n; i++) {
		std::cin >> num;
		seq.push_back(num);
	}

	menor = seq.at(0);

	for (int i = 1; i < seq.size(); i++) {
		if (seq.at(i) < menor) {
			menor = seq.at(i);
			posicao = i;
		}
	}

	std::cout << "Menor valor: " << menor << std::endl;
	std::cout << "Posicao: " << posicao << std::endl;
}
