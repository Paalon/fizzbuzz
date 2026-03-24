#include <stdio.h>

void say(int n) {
	bool is_fizz = n % 3 == 0;
	bool is_buzz = n % 5 == 0;
	if (is_fizz && is_buzz) {
		puts("fizz buzz");
	} else if (is_fizz) {
		puts("fizz");
	} else if (is_buzz) {
		puts("buzz");
	} else {
		printf("%d\n", n);
	}
}

void play(int n) {
	for (int i = 1; i <= n; i++) {
		say(i);
	}
}

int main() {
	int n;
	scanf("%d", &n);
	play(n);
}
