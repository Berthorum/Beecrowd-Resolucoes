#include <iostream>
#include <cmath>

int main(){
	int n;
	std::cin >> n;
	for (int i = 1; i <= n; i++) {
		std::cout << i << " ";
		std::cout << pow(i, 2) << " ";
		std::cout << pow(i, 3);
		
		std::cout << std::endl;
	}
}
