#include <iostream>
#include <iomanip>
#include <vector>


int main(){
	int n = 0, sum = 0;
	float media;
	std::vector<int> vec;

	while (n >= 0) {
		std::cin >> n;
		vec.push_back(n);
	}
	vec.pop_back();

	for (int elem : vec) {
		sum += elem;
	}
	media = sum / (float)vec.size();

	std::cout << std::fixed << std::setprecision(2) << media << std::endl;
}
