//Testing function eqtflength.sci
//Author: Nagma Khan

funcprot(0)
exec('eqtflength.sci',-1);

//*****************************************************************************
//TEST 1
//Testing for correct number of input
//*****************************************************************************

//**(1)Checking with no input

try
    eqtflength();
catch
    [error_msg,error_num] = lasterror(%t);
    
    disp("error number - ")
    disp(error_num)
    
    disp("error message - ")
    disp(error_msg)
end

//Output:error number: 10000, error message: Incorrect number of input arguments.

//**Result->PASS: Error message correct but number incorrect (should be 77 but is 10000)
//*****************************************************************************
//**(2)Checking with more 3 inputs

try
    eqtflength([1 2 3],[1 2 2 5], 5);
catch
    [error_msg,error_num] = lasterror(%t);
    
    disp("error number - ")
    disp(error_num)
    
    disp("error message - ")
    disp(error_msg)
end

//Output:error number: 10000, error message: Wrong number of input arguments.
 
//**Result->Error message correct but number incorrect (should be 77 but is 58)
//But this case is not explicitly handled in code
//*****************************************************************************
//**(3)More than 4 output arguments
try
    [b,a,N,M,test]=eqtflength([1 2 3],[3 4 5 7]);
catch
    [error_msg,error_num] = lasterror(%t);
    
    disp("error number - ");
    disp(error_num);
    
    disp("error message - ");
    disp(error_msg);
end

//Output:No output, just a warning: 'recursion problem..., cleared.'
// Had to be aborted.

//**Result--> FAIL- Can't handle exception,no error message
