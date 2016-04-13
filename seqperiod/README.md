Author-Nagma Khan

Reference: MATLAB, MATLAB help

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
