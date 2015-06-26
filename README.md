# Hamming-Number-Generator
Generates the amount of hamming numbers the user inputs

[Hamming Numbers](http://en.wikipedia.org/wiki/Regular_number) are positive integers with only 2, 3, and 5 as prime factors. This program will use streams and lazy evaluation to print out a list of hamming numbers efficiently.

Running the Program
---
This program was made in [Moscow ML](http://mosml.org/).
Load it by putting the following lines into your console:
>mosml

>use "C:/directory/to/Hamming-Number-Generator/HammingNumberGenerator.sml";

Example Execution
---
Entering:
>str2list 50 hamstr;

Will return:
>val it = [1, 2, 3, 4, 5, 6, 8, 9, 10, 12, 15, 16, 18, 20, 24, 25, 27, 30, 32, 36, 40, 45, 48, 50, 54, 60, 64, 72, 75, 80, 81, 90, 96, 100, 108, 120, 125, 128, 135, 144, 150, 160, 162, 180, 192, 200, 216, 225, 240, 243] :
int list
