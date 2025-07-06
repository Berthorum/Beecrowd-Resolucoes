#include <iostream>
#include <cmath>

int main(){
	int n, firstElement, secondElement, thirdElement;
	std::cin >> n;

	for (int i = 1; i <= n * 2; i++) {
		if (i % 2 == 0) {
			firstElement = i / 2;
			std::cout << firstElement << " ";

			secondElement = pow(firstElement, 2) + 1;
			std::cout << secondElement << " ";

			thirdElement = (firstElement * secondElement) - (firstElement - 1);
			std::cout << thirdElement;
		}
		else {
			firstElement = (i + 1) / 2;
			std::cout << firstElement << " ";

			secondElement = pow(firstElement, 2);
			std::cout << secondElement << " ";

			thirdElement = firstElement * secondElement;
			std::cout << thirdElement;

		}

		std::cout << std::endl;
	}
}