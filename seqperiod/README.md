Author-Nagma Khan

Reference: MATLAB, MATLAB help

TEST 1-Testing for correct number of input

(1)Checking with no input

Result--> Error message correct but number incorrect (should be 77 but is 1000)

(2)Checking with 2 inputs

Result--> FAIL-No error message displayed. This case not explicitly handled in code.

(3)More than 4 output arguments

Result--> FAIL-No error message displayed. This case not explicitly handled in code.

**************************************************************************************************************************
TEST 2-Testing with various inputs for correct outputs

(1)2D Matrix with pattern

Result-->PASS

(2)2D Matrix with first dimension 1

Result-->PASS

(3)3D Matrix with first dimension 1

Result-->FAIL

(4)4D Matrix with first dimension 1

Result-->FAIL-Can't deal if more than 3D or more dimension matrices with first dimension as 1

(5)Zero as an input

Result-->FAIL-An exception occurs

(6)Random 1D input

Result-->FAIL-An exception occurs, can't deal with 1D cases

(7)Infinity as input

Result-->FAIL-An exception occurs.

(8)2D Infinity matrix as input

Result-->PASS

(9)Long vector having pattern

Result-->PASS

(10)2D Matrix with many columns, having pattern


Result-->PASS
