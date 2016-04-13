//Testing function eqtflength.sci
//Author: Nagma Khan

funcprot(0)
exec('eqtflength.sci',-1);
//*****************************************************************************
//TEST 2
//Testing with various inputs for correct outputs
//*****************************************************************************

//**(1)Unequal length a and b with no trailing or leading zeroes
a1=[1 3 2];
b1=[1 2 1 1];
try
    [b,a,N,M]=eqtflength(b1,a1);
    out=[b,a,N,M];
    b_exp=[1 2 1 1];
    a_exp=[1 3 2 0];
    N_exp=3;
    M_exp=2;
    out_exp=[b_exp,a_exp,N_exp,M_exp];
    //Checking for equality of size of expected and actual for output vector
    assert_checkalmostequal(size(out),size(out_exp))
    //If test passed then check for individual elements of output
    //Checking for equality of size of expected and actual for outputs a and b
    assert_checkalmostequal(size(b),size(b_exp))
    assert_checkalmostequal(size(a),size(a_exp))
    //Checking for equality of expected and actual values for outputs a and b
    assert_checkalmostequal(b,b_exp)
    assert_checkalmostequal(a,a_exp)
    //Checking for equality of expected and actual values for outputs N and M
    assert_checkalmostequal(N,N_exp)
    assert_checkalmostequal(M,M_exp)
catch
    [error_msg,error_num] = lasterror(%t);
    
    disp("error number - ");
    disp(error_num);
    
    disp("error message - ");
    disp(error_msg);
end

//Output: b=[1 2 1 1],a=[1 3 2 0], N=3, M=2

//**Result-->PASS

//*****************************************************************************
//**(2)Inputs which have trailing zeroes
a1=[1 3 2 0 0];
b1=[1 2 1 1];
try
    [b,a,N,M]=eqtflength(b1,a1);
    out=[b,a,N,M];
    b_exp=[1 2 1 1];
    a_exp=[1 3 2 0];
    N_exp=3;
    M_exp=2;
    out_exp=[b_exp,a_exp,N_exp,M_exp];
    //Checking for equality of size of expected and actual for output vector
    assert_checkalmostequal(size(out),size(out_exp))
    //If test passed then check for individual elements of output
    //Checking for equality of size of expected and actual for outputs a and b
    assert_checkalmostequal(size(b),size(b_exp))
    assert_checkalmostequal(size(a),size(a_exp))
    //Checking for equality of expected and actual values for outputs a and b
    assert_checkalmostequal(b,b_exp)
    assert_checkalmostequal(a,a_exp)
    //Checking for equality of expected and actual values for outputs N and M
    assert_checkalmostequal(N,N_exp)
    assert_checkalmostequal(M,M_exp)
catch
    [error_msg,error_num] = lasterror(%t);
    
    disp("error number - ");
    disp(error_num);
    
    disp("error message - ");
    disp(error_msg);
end

//Output: b=[1 2 1 1], a=[1 3 2 0],N=3,M=2.

//**Result-->PASS

//*****************************************************************************

//**(3)Inputs which have leading zeroes i.e. say 1st and 2nd coefficients are zero
a1=[0 0 1 1];
b1=[0 1 2 1];
try
    [b,a,N,M]=eqtflength(b1,a1);
    out=[b,a,N,M];
    b_exp=[0 0 1 1];
    a_exp=[0 1 2 1];
    N_exp=3;
    M_exp=3;
    out_exp=[b_exp,a_exp,N_exp,M_exp];
    //Checking for equality of size of expected and actual for output vector
    assert_checkalmostequal(size(out),size(out_exp))
    //If test passed then check for individual elements of output
    //Checking for equality of size of expected and actual for outputs a and b
    assert_checkalmostequal(size(b),size(b_exp))
    assert_checkalmostequal(size(a),size(a_exp))
    //Checking for equality of expected and actual values for outputs a and b
    assert_checkalmostequal(b,b_exp)
    assert_checkalmostequal(a,a_exp)
    //Checking for equality of expected and actual values for outputs N and M
    assert_checkalmostequal(N,N_exp)
    assert_checkalmostequal(M,M_exp)
catch
    [error_msg,error_num] = lasterror(%t);
    
    disp("error number - ");
    disp(error_num);
    
    disp("error message - ");
    disp(error_msg);
end

//Output: b=[0.1 2],a=[0 0 1],N=2, M=1
//error-number-10000
//error-message- assert_checkalmostequal: Assertion failed: expected = [1 ...] while computed = [1 ...]

//**Result-->FAIL-Gives wrong output,Can't deal with leading zeroes

//*****************************************************************************

//**(4)Inputs which have numerator zero
a1=[1 2 1 1];
b1=[0];
try
    [b,a,N,M]=eqtflength(b1,a1);
    out=[b,a,N,M];
    a_exp=[1 2 1 1];
    b_exp=[0 0 0 0];
    N_exp=0;
    M_exp=3;
    out_exp=[b_exp,a_exp,N_exp,M_exp];
    //Checking for equality of size of expected and actual for output vector
    assert_checkalmostequal(size(out),size(out_exp))
    //If test passed then check for individual elements of output
    //Checking for equality of size of expected and actual for outputs a and b
    assert_checkalmostequal(size(b),size(b_exp))
    assert_checkalmostequal(size(a),size(a_exp))
    //Checking for equality of expected and actual values for outputs a and b
    assert_checkalmostequal(b,b_exp)
    assert_checkalmostequal(a,a_exp)
    //Checking for equality of expected and actual values for outputs N and M
    assert_checkalmostequal(N,N_exp)
    assert_checkalmostequal(M,M_exp)
catch
    [error_msg,error_num] = lasterror(%t);
    
    disp("error number - ");
    disp(error_num);
    
    disp("error message - ");
    disp(error_msg);
end

//Output: a=[1.2.1.1], b=[0 0 0 0], N=-1, M=3
//error-number-10000
//error-message-assert_checkalmostequal: Assertion failed: expected = 0 while computed = -1  

//**Result-->FAIL-gives M as -1, when it should be 0, can't handle this case
//*****************************************************************************

//**(5)Inputs which have denominator zero
a1=[0];
b1=[1];
try
    [b,a,N,M]=eqtflength(b1,a1);
    //Error message expected
catch
    [error_msg,error_num] = lasterror(%t);
    
    disp("error number - ");
    disp(error_num);
    
    disp("error message - ");
    disp(error_msg);
end

//Should give error that denominator can't be zero

//Output: b=1, a=0, N=0, M=-1, No error

//**Result-->FAIL-No error displayed

//*****************************************************************************

//**(6)Inputs which have zero coefficients in between-not as leading or trailing
a1=[1 0 2 0 0];
b1=[1 0 1 1 1];
try
    [b,a,N,M]=eqtflength(b1,a1);
    out=[b,a,N,M];
    b_exp=[1 0 1 1 1];
    a_exp=[1 0 2 0 0];
    N_exp=4;
    M_exp=2;
    out_exp=[b_exp,a_exp,N_exp,M_exp];
    //Checking for equality of size of expected and actual for output vector
    assert_checkalmostequal(size(out),size(out_exp))
    //If test passed then check for individual elements of output
    //Checking for equality of size of expected and actual for outputs a and b
    assert_checkalmostequal(size(b),size(b_exp))
    assert_checkalmostequal(size(a),size(a_exp))
    //Checking for equality of expected and actual values for outputs a and b
    assert_checkalmostequal(b,b_exp)
    assert_checkalmostequal(a,a_exp)
    //Checking for equality of expected and actual values for outputs N and M
    assert_checkalmostequal(N,N_exp)
    assert_checkalmostequal(M,M_exp)
catch
    [error_msg,error_num] = lasterror(%t);
    
    disp("error number - ");
    disp(error_num);
    
    disp("error message - ");
    disp(error_msg);
end

//Output: b=[1 0 1.1],a=[1 0 2 0],N=3, M=1
//error-number-10000
//error-message- assert_checkalmostequal: Assertion failed: expected = [1 ...] while computed = [1 ...]

//**Result-->FAIL-can't deal with input vectors which have zeros in between,
//should have done nothing, but it removes one entry from end giving wrong output
//*****************************************************************************

//**(7)Infinity as input
a1=%inf
b1=%inf;
try
    [b,a,N,M]=eqtflength(b1,a1);
    out=[b,a,N,M];
    b_exp=%inf;
    a_exp=%inf;
    N_exp=0;
    M_exp=0;
    out_exp=[b_exp,a_exp,N_exp,M_exp];
    //Checking for equality of size of expected and actual for output vector
    assert_checkalmostequal(size(out),size(out_exp))
    //If test passed then check for individual elements of output
    //Checking for equality of size of expected and actual for outputs a and b
    assert_checkalmostequal(size(b),size(b_exp))
    assert_checkalmostequal(size(a),size(a_exp))
    //Checking for equality of expected and actual values for outputs a and b
    assert_checkalmostequal(b,b_exp)
    assert_checkalmostequal(a,a_exp)
    //Checking for equality of expected and actual values for outputs N and M
    assert_checkalmostequal(N,N_exp)
    assert_checkalmostequal(M,M_exp)
catch
    [error_msg,error_num] = lasterror(%t);
    
    disp("error number - ");
    disp(error_num);
    
    disp("error message - ");
    disp(error_msg);
end

//Output: b=%inf, a=%inf, M=0, N=0

//**Result-->PASS
//*****************************************************************************


//**(8)Using 4D vector as input
a1=ones(2,2,2,2);
b1=zeros(2,2,2,2);
try
    [b,a,N,M]=eqtflength(b1,a1);
    out=[b,a,N,M];
    b_exp=zeros(1,16);
    a_exp=ones(1,16);
    N_exp=0;
    M_exp=15;
    out_exp=[b_exp,a_exp,N_exp,M_exp];
    //Checking for equality of size of expected and actual for output vector
    assert_checkalmostequal(size(out),size(out_exp))
    //If test passed then check for individual elements of output
    //Checking for equality of size of expected and actual for outputs a and b
    assert_checkalmostequal(size(b),size(b_exp))
    assert_checkalmostequal(size(a),size(a_exp))
    //Checking for equality of expected and actual values for outputs a and b
    assert_checkalmostequal(b,b_exp)
    assert_checkalmostequal(a,a_exp)
    //Checking for equality of expected and actual values for outputs N and M
    assert_checkalmostequal(N,N_exp)
    assert_checkalmostequal(M,M_exp)
catch
    [error_msg,error_num] = lasterror(%t);
    
    disp("error number - ");
    disp(error_num);
    
    disp("error message - ");
    disp(error_msg);
end

//Output: a=ones(1,16), b=zeros(1,16), N=-1, M=15
//error-number-10000
//error-message-assert_checkalmostequal: Assertion failed: expected = 0 while computed = -1  

//**Result-->FAIL:b, a and M correct but gives N as -1, can handle 4D or larger matrices
//but no provision to handle N<0 or M<0.
//*****************************************************************************
