#include <iostream>
#include <vector>


int main(){
	int n, aux;
	
	std::cin >> n;

	aux = n;

	for (int i = n - 1; i > 0; i--) {
		aux =  aux * i;
	}

	std::cout << aux << std::endl;
}
