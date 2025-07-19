#include <iostream>
#include <iomanip>


int main(){ 
	float s = 0.0f;

	for (int i = 1; i <= 100; i++) {
		s += (1 / (float)i);
	}

	std::cout << std::fixed << std::setprecision(2) << s << std::endl;
}
