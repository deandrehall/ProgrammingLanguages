#include <iostream>
#include <string>
#include <list>
#include <numeric>
#include <map>
#include <algorithm>
using namespace std;

list<int> fibonacci_Mutable(int position) {

	list<int> fibSequence;

	if (position >= 1)
		fibSequence.push_back(1);

	if (position >= 2)
		fibSequence.push_back(1);

	for (int index = 2; index < position; index++)
	{
		list<int>::iterator iterator = fibSequence.end();
		fibSequence.push_back(*(--iterator) + *(--iterator));
	}

	return fibSequence;
}

list<int> fibonacci_Recursion(int position)
{
	list<int> fibRsequence;

	if (position == 1)
	{
		fibRsequence.push_back(1);
	}
	else if (position == 2)
	{
		fibRsequence.push_back(1);
		fibRsequence.push_back(1);
	}
	else
	{
		fibRsequence = fibonacci_Recursion(position - 1);
		list<int>::iterator iterator = fibRsequence.end();
		fibRsequence.push_back(*(--iterator) + *(--iterator));
	}

	return fibRsequence;
}

list<int> fibonacci_Immutable(int position)
{
	list<int> dummy;
	if (position == 1)
	{
		dummy = { 1 };
	}

	else if (position == 2)
	{
		dummy = { 1 , 1 };
	}
	else
	{
		dummy.resize(position - 2);

		dummy = accumulate(dummy.begin(), dummy.end(), list<int>{1, 1}, [](list<int> dummy, int) {
			list<int>::iterator iterator = dummy.end();
			list<int> newSeries = dummy;
			newSeries.push_back(*(--iterator) + *(--iterator));
			return newSeries;
		});
	}

	return dummy;
}

int main(int argc, char* argv[]) {

	int position = stoi(argv[1]);
	list<int> fibSequence = fibonacci_Mutable(position);

	cout << "Fibonacci sequence for position " << position << " with the mutable function." << endl;

	for (int value : fibSequence) {
		cout << value << " ";
	}
	cout << endl;

	cout << "Fibonacci sequence for position " << position << " with the recursion function." << endl;

	list<int> fibRsequence = fibonacci_Recursion(position);

	for (int value : fibRsequence) {
		cout << value << " ";
	}
	cout << endl;

	cout << "Fibonacci sequence for position " << position << " with the immutable function." << endl;
	list<int> fibImmsequence = fibonacci_Immutable(position);

	for (int value : fibImmsequence) {
		cout << value << " ";
	}
	cout << endl;
	return 0;
}