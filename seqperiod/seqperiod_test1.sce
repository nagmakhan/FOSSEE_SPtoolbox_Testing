//Testing function seqperiod.sci
//Author: Nagma Khan

funcprot(0)
exec('seqperiod.sci',-1);

//*****************************************************************************
//TEST 1
//Testing for correct number of input
//*****************************************************************************

//**(1)Checking with no input
try
    seqperiod();
catch
    [error_msg,error_num] = lasterror(%t);
    
    disp("error number - ");
    disp(error_num);
    
    disp("error message - ");
    disp(error_msg);
end

//Output:error number: 10000, error message: Incorrect number of input arguments.

//**Result--> Error message correct but number incorrect (should be 77 but is 10000)
//******************************************************************************

//**(2)Checking with 2 inputs
try
    seqperiod([1 2],[3,4]);
catch
    [error_msg,error_num] = lasterror(%t);
    
    disp("error number - ");
    disp(error_num);
    
    disp("error message - ");
    disp(error_msg);
end

//Output: No error

//**Result--> FAIL-No error message displayed.But this case not explicitly handled in code
//******************************************************************************

//**(3)More than 4 output arguments
try
    [p,num,test]=seqperiod([1 2]);
catch
    [error_msg,error_num] = lasterror(%t);
    
    disp("error number - ");
    disp(error_num);
    
    disp("error message - ");
    disp(error_msg);
end

//Output: No error displayed
//**Result--> FAIL- Can't handle exception,no error message
