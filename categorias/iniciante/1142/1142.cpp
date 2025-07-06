#include <iostream>

int main(){
	int n;
	int cont = 1;
	std::cin >> n;

	for (int i = 1; i <= n; i++) {
		for(int j = 1; j <=4; j++){
			if (cont % 4 == 0) {
				std::cout << "PUM";
			}
			else {
				std::cout << cont << " ";
			}
			cont++;
		}
		std::cout << std::endl;
	}
}
