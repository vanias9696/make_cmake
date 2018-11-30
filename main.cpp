#include "calculator.h"
#include <iostream>

using namespace std;

int main(void)
{
	Calculator calc;
	cout << "15 + 63 = " << calc.Add(15, 63) << endl;
	cout << "28 - 12 = " << calc.Sub(28, 12) << endl;
	cout << " 7 *  5 = " << calc.Mul(7, 5) << endl;
	return 0;
}
