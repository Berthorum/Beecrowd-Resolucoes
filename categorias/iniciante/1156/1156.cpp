#include <iostream>
#include <iomanip>


int main(){ 
	float s = 0.0f;
	int deno = 2;

	for (int i = 3; i <= 39; i+=2) {
		s += (i / (float)deno);
		deno *= 2;
	}

	s++;

	std::cout << std::fixed << std::setprecision(2) << s << std::endl;
}
