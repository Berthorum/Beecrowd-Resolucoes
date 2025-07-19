#include <iostream>
#include <vector>

int main(){
	int n, cont = 2, aux = 0, ultimo = 0;
	std::vector<int> seq;
	std::cin >> n;

	seq.push_back(0);
	seq.push_back(1);

	while (cont < n) {
		ultimo = seq.size() - 1;
		aux = seq[ultimo] + seq[ultimo - 1];
		seq.push_back(aux);

		cont++;
	}

	for (int i = 0; i < seq.size(); i++) {
		std::cout << seq[i];

		if (i != seq.size() - 1) {
			std::cout << " ";
		}
	}

	std::cout << std::endl;

}