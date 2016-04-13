Author-Nagma Khan

TEST 1-Testing for correct number of input

(1)Checking with no input

Result->PASS: Error message correct but number incorrect (should be 77 but is 1000)

(2)Checking with more 3 inputs

Result->Error message correct but number incorrect (should be 77 but is 58). But this case is not explicitly handled in code.

(3)More than 4 output arguments

Result--> FAIL- Can't handle exception,no error message.

******************************************************************************************************************************
TEST 2-Testing with various inputs for correct outputs

(1)Unequal length a and b with no trailing or leading zeroes

Result-->PASS

(2)Inputs which have trailing zeroes

Result-->PASS

(3)Inputs which have leading zeroes i.e. say 1st and 2nd coefficients are zero

Result-->FAIL-Gives wrong output,Can't deal with leading zeroes.

(4)Inputs which have numerator zero

Result-->FAIL-gives M as -1, when it should be 0, can't handle this case

(5)Inputs which have denominator zero

Result-->FAIL-No error displayed

(6)Inputs which have zero coefficients in between-not as leading or trailing

FAIL-can't deal with input vectors which have zeros in between, should have done nothing, 
but it removes one entry from end giving wrong output.

(7)Infinity as input

Result-->PASS

(8)Using 4D vector as input

Result-->FAIL:b, a and M correct but gives N as -1, can handle 4D or 
larger matrices but no provision to handle N<0 or M<0.

