Author-Nagma Khan

Reference: MATLAB, MATLAB help


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
