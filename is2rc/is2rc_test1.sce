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

//**Result--> FAIL-No input case not handled with explicit error message.
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

//**Result--> Error message correct but number incorrect (should be 77 but is 58)
//But this case not explicityly handled in code
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

//**Result--> PASS-Error message correct but error number incorrect(should be 82 but is 1000)
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

//**Result--> FAIL-Exception not handled.
//******************************************************************************
