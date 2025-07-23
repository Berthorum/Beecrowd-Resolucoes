#include <iostream>

int main() {
	int t, n, tam;
	long long seq[61];

	tam = sizeof(seq) / sizeof(long long);

	std::cin >> t;

	if (t > 0) {
		seq[0] = 0;
		seq[1] = 1;

		for (int i = 2; i < tam; i++) {
			seq[i] = seq[i - 1] + seq[i - 2];
		}

		for (int i = 0; i < t; i++) {
			std::cin >> n;

			std::cout << "Fib(" << n << ")" << " = " << seq[n] << std::endl;

		}
	}
}
