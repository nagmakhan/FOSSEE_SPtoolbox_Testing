//Testing function is2rc.sci
//Author: Nagma Khan

funcprot(0)
exec('is2rc.sci',-1);

//*****************************************************************************
//TEST 1
//Testing for correct number of input
//*****************************************************************************

//**(1)Checking with no input
try
    is2rc();
catch
    [error_msg,error_num] = lasterror(%t);
    
    disp("error number - ");
    disp(error_num);
    
    disp("error message - ");
    disp(error_msg);
end

//Output:error number: 4, error message: Undefined variable: isin  

//**Result--> FAIL-Case not handled with explicit error message.
//******************************************************************************
//**(2)Checking with 2 inputs
try
    is2rc(2,3);
catch
    [error_msg,error_num] = lasterror(%t);
    
    disp("error number - ");
    disp(error_num);
    
    disp("error message - ");
    disp(error_msg);
end

//Output:error number: 58, error message: Wrong number of input arguments

//**Result--> Error message correct but number incorrect (should be 77 but is 58)
//But this case not explicitly handled in code
//******************************************************************************
//**(3)Checking with complex input
try
    is2rc(2+3*%i);
catch
    [error_msg,error_num] = lasterror(%t);
    
    disp("error number - ");
    disp(error_num);
    
    disp("error message - ");
    disp(error_msg);
end
//Output:error number: 10000, error message: Input inverse sine coefficients are not real

//**Result--> PASS-Error message correct but error number incorrect(should be 82 but is 10000)
//******************************************************************************

//**(4)Checking with two outputs
try
    [k1 k2]=is2rc(2);
catch
    [error_msg,error_num] = lasterror(%t);
    
    disp("error number - ");
    disp(error_num);
    
    disp("error message - ");
    disp(error_msg);
end

//Output:No output, just a warning: 'recursion problem..., cleared'
// Had to be aborted.

//**Result--> FAIL-Exception not handled.
//******************************************************************************
