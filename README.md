# FOSSEE_SPtoolbox_Testing

Author-Nagma Khan

Reference: MATLAB, MATLAB help

This contains test cases for functions in Signal Processing Toolbox, Scilab. 
The functions tested are:eqtflength, is2rc and seqperiod. Test results are summarised below.

(1) eqtflength

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


******************************************************************************************************************************************************************************************************************************************************
(2) seqperiod

TEST 1-Testing for correct number of input

(1)Checking with no input

Output:error number: 10000, error message: Incorrect number of input arguments.

Result--> Error message correct but number incorrect (should be 77 but is 10000)

(2)Checking with 2 inputs

Output: No error

Result--> FAIL-No error message displayed. This case not explicitly handled in code.

(3)More than 4 output arguments

Output: No error displayed

Result--> FAIL-No error message displayed. This case not explicitly handled in code.

**************************************************************************************************************************
TEST 2-Testing with various inputs for correct outputs

(1)2D Matrix with pattern

A=[2 3 4;2 1 5;2 3 6]

Output: p=[1 2 3], num=[3 1.5 1]

Result-->PASS

(2)2D Matrix with first dimension 1

A=zeros(1,2)

Output: p=1, num=2

Result-->PASS

(3)3D Matrix with first dimension 1

A=zeros(1,2,3)

Output: error number:10000; error message: %hm_matrix: Input and output matrices  must have the same number of elements  

Result-->FAIL

(4)4D Matrix with first dimension 1

A=zeros(1,2,2,2)

Output: error number-10000; error message- %hm_matrix: Input and output matrices  must have the same number of elements.

Result-->FAIL-Can't deal if more than 3D or more dimension matrices with first dimension as 1

(5)Zero as an input

A=zeros(1)

Output:error number- 18;error message- Too many variables

Result-->FAIL-An exception occurs

(6)Random 1D input

A=rand(1)

Output:error number- 18;error message- run: Too many variables
    
Result-->FAIL-An exception occurs, can't deal with 1D cases

(7)Infinity as input

A=%inf

Output:error number- 18; error message- run: Too many variables.

Result-->FAIL-An exception occurs.

(8)2D Infinity matrix as input

A=%inf*ones(2,3)

Output: p=[1 1 1], num=[2 2 2]

Result-->PASS

(9)Long vector having pattern

A=[1 2 3]*ones(3,1000) //will give 1x1000 vector containing 6

Output: p=1, num=1000

Result-->PASS

(10)2D Matrix with many columns, having pattern

A=[1 2 3;1 2 3]*ones(3,1000) //will give 2x1000 vector containing 6

Output: p=ones(1,1000), num=2*ones(1,1000)

Result-->PASS

****************************************************************************************************************************************************************************************************************************************************
(3) is2rc

TEST 1-Testing for correct number of input

(1)Checking with no input

Output:error number: 4, error message: Undefined variable: isin  

Result--> FAIL-Case not handled with explicit error message.

(2)Checking with 2 inputs

Output:error number: 58, error message: Wrong number of input arguments

Result--> Error message correct but number incorrect (should be 77 but is 58). But this case not explicitly handled in code.

(3)Checking with complex input

Output:error number: 10000, error message: Input inverse sine coefficients are not real.

Result--> PASS-Error message correct but error number incorrect(should be 82 but is 10000).

(4)Checking with two outputs

Output:No output, just a warning: 'recursion problem..., cleared'.Had to be aborted.

Result--> FAIL-Exception not handled.

*******************************************************************************************************************************
TEST 2-Testing with various inputs for correct outputs

(1)3D matrix of ones

A=ones(2,2,2)

Output: k_exp=hypermat([2 2 2],[1 1 1 1 1 1 1 1])

Result-->PASS

(2)Vector of sine inverse values

A=asin([0.5 0.833 -0.4])

Output: k=[0.7328267 0.9997039 0.6023239]

Result-->PASS

(3)Giving values more than pi and less than -pi

A=([%pi -1*%pi 1.5*%pi])

Output: k= [0.9753680 0.9753680 0.8996722]

Result-->PASS

(4)Giving very large number as input

A=1e10;

Output: k=-0.0000011 

Result-->PASS

(5)Giving infinity as input

A=%inf

Output: k=%nan

Result-->PASS

(6)Giving very small number

A=1e-10

Output: k=1.571D-10

Result-->PASS

(7)Giving zero as input

A=0

Output: k=0

Result-->PASS.
