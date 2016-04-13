Author-Nagma Khan

Reference: MATLAB, MATLAB help

TEST 1-Testing for correct number of input

(1)Checking with no input

Output:error number: 10000, error message: Incorrect number of input arguments.

Result->PASS: Error message correct but number incorrect (should be 77 but is 10000)

(2)Checking with more 3 inputs

Output:error number: 10000, error message: Wrong number of input arguments

Result->Error message correct but number incorrect (should be 77 but is 58). But this case is not explicitly handled in code.

(3)More than 4 output arguments

Output:No output, just a warning: 'recursion problem..., cleared.' Had to be aborted.

Result--> FAIL- Can't handle exception,no error message.

******************************************************************************************************************************
TEST 2-Testing with various inputs for correct outputs

(1)Unequal length a and b with no trailing or leading zeroes

a1=[1 3 2];
b1=[1 2 1 1];

Output: b=[1 2 1 1],a=[1 3 2 0], N=3, M=2

Result-->PASS

(2)Inputs which have trailing zeroes

a1=[1 3 2 0 0];
b1=[1 2 1 1];

Output: b=[1 2 1 1], a=[1 3 2 0],N=3,M=2.

Result-->PASS

(3)Inputs which have leading zeroes i.e. say 1st and 2nd coefficients are zero

a1=[0 0 1 1];
b1=[0 1 2 1];

Output: b=[0.1 2],a=[0 0 1],N=2, M=1; error-number-10000;error-message- assert_checkalmostequal: Assertion failed: expected = [1 ...] while computed = [1 ...]

Result-->FAIL-Gives wrong output,Can't deal with leading zeroes.

(4)Inputs which have numerator zero

a1=[1 2 1 1];
b1=[0];

Output: a=[1.2.1.1], b=[0 0 0 0], N=-1, M=3; error-number-10000; error-message-assert_checkalmostequal: Assertion failed: expected = 0 while computed = -1  

Result-->FAIL-gives M as -1, when it should be 0, can't handle this case

(5)Inputs which have denominator zero

a1=[0];
b1=[1];

Output: b=1, a=0, N=0, M=-1, No error

Result-->FAIL-No error displayed

(6)Inputs which have zero coefficients in between-not as leading or trailing

a1=[1 0 2 0 0];
b1=[1 0 1 1 1];

Output: b=[1 0 1.1],a=[1 0 2 0],N=3, M=1; error-number-10000; error-message- assert_checkalmostequal: Assertion failed: expected = [1 ...] while computed = [1 ...]

FAIL-can't deal with input vectors which have zeros in between, should have done nothing, 
but it removes one entry from end giving wrong output.

(7)Infinity as input

a1=%inf
b1=%inf;

Output: b=%inf, a=%inf, M=0, N=0

Result-->PASS

(8)Using 4D vector as input

a1=ones(2,2,2,2);
b1=zeros(2,2,2,2);

Output: a=ones(1,16), b=zeros(1,16), N=-1, M=15;error-number-10000;error-message-assert_checkalmostequal: Assertion failed: expected = 0 while computed = -1

Result-->FAIL:b, a and M correct but gives N as -1, can handle 4D or 
larger matrices but no provision to handle N<0 or M<0.

