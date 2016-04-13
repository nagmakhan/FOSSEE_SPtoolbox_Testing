# FOSSEE_SPtoolbox_Testing

Author-Nagma Khan

Reference: MATLAB, MATLAB help

This contains test cases for functions in Signal Processing Toolbox, Scilab. 
The functions tested are:eqtflength, is2rc and seqperiod. Test results are summarised below.

(1) eqtflength

TEST 1-Testing for correct number of input

(1)Checking with no input

Result->PASS: Error message correct but number incorrect (should be 77 but is 10000)

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

******************************************************************************************************************************************************************************************************************************************************
(2) seqperiod

TEST 1-Testing for correct number of input

(1)Checking with no input

Result--> Error message correct but number incorrect (should be 77 but is 10000)

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
****************************************************************************************************************************************************************************************************************************************************
(3) is2rc

TEST 1-Testing for correct number of input

(1)Checking with no input

Result--> FAIL-Case not handled with explicit error message.

(2)Checking with 2 inputs

Result--> Error message correct but number incorrect (should be 77 but is 58). But this case not explicitly handled in code.

(3)Checking with complex input

Result--> PASS-Error message correct but error number incorrect(should be 82 but is 10000).

(4)Checking with two outputs

Result--> FAIL-Exception not handled.

*******************************************************************************************************************************
TEST 2-Testing with various inputs for correct outputs

(1)3D matrix of ones

Result-->PASS

(2)Vector of sine inverse values

Result-->PASS

(3)Giving values more than pi and less than -pi

Result-->PASS

(4)Giving very large number as input

Result-->PASS

(5)Giving infinity as input

Result-->PASS

(6)Giving very small number

Result-->PASS

(7)Giving zero as input

Result-->PASS

