//Testing function eqtflength.sci
//Author: Nagma Khan

funcprot(0)
exec('eqtflength.sci',-1);

//*****************************************************************************
//TEST 1
//Testing for correct number of input
//*****************************************************************************

//**(1)Checking with no input
//eqtflength();
try
    eqtflength();
catch
    [error_msg,error_num] = lasterror(%t);
    
    disp("error number - ")
    disp(error_num)
    
    disp("error message - ")
    disp(error_msg)
end

//**Result->PASS: Error message correct but number incorrect (should be 77 but is 1000)
//*****************************************************************************
//**(2)Checking with more 3 inputs
//eqtflength();
try
    eqtflength([1 2 3],[1 2 2 5], 5);
catch
    [error_msg,error_num] = lasterror(%t);
    
    disp("error number - ")
    disp(error_num)
    
    disp("error message - ")
    disp(error_msg)
end

//**Result->Error message correct but number incorrect (should be 77 but is 58)
//But this case not explicityly handled in code
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

//**Result--> FAIL- Can't handle exception,no error message
