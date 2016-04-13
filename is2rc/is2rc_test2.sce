//Testing function is2rc.sci
//Author: Nagma Khan

funcprot(0)
exec('is2rc.sci',-1);;
//*****************************************************************************
//TEST 2
//Testing with various inputs for correct outputs
//*****************************************************************************

//**(1)3D matrix of ones
A=ones(2,2,2);
try
    k=is2rc(A);
    k_exp=hypermat([2 2 2],[1 1 1 1 1 1 1 1]);
    assert_checkalmostequal(k,k_exp)
catch
    [error_msg,error_num] = lasterror(%t);
    
    disp("error number - ");
    disp(error_num);
    
    disp("error message - ");
    disp(error_msg);
end



//**Result-->PASS
//*****************************************************************************

//**(2)vector of sine inverse values
A=asin([0.5 0.833 -0.4]);
try
    k=is2rc(A);
    k_exp=[0.732826665572200 0.999703925250207 -0.602323892850317];
    assert_checkalmostequal(k,k_exp)
catch
    [error_msg,error_num] = lasterror(%t);
    
    disp("error number - ");
    disp(error_num);
    
    disp("error message - ");
    disp(error_msg);
end

//**Result-->PASS
//*****************************************************************************

//**(3)Giving values more than pi and less than -pi
A=([%pi -1*%pi 1.5*%pi]);
try
    k=is2rc(A);
    k_exp=[-0.975367972083632 0.975367972083632 0.899672165311148];
    assert_checkalmostequal(k,k_exp)
catch
    [error_msg,error_num] = lasterror(%t);
    
    disp("error number - ");
    disp(error_num);
    
    disp("error message - ");
    disp(error_msg);
end

//**Result-->PASS
//*****************************************************************************

//**(4)Giving very large number as input
A=1e10;
try
    k=is2rc(A);
    k_exp=-1.11968138097866e-06;
    assert_checkalmostequal(k,k_exp)
catch
    [error_msg,error_num] = lasterror(%t);
    
    disp("error number - ");
    disp(error_num);
    
    disp("error message - ");
    disp(error_msg);
end

//**Result-->PASS
//****************************************************************************

//**(5)Giving infinity as input.
A=%inf;
try
    k=is2rc(A);
    k_exp=%nan;
    assert_checkalmostequal(k,k_exp)
catch
    [error_msg,error_num] = lasterror(%t);
    
    disp("error number - ");
    disp(error_num);
    
    disp("error message - ");
    disp(error_msg);
end

//**Result-->PASS
//****************************************************************************

//**(6)Giving very small number
A=1e-10;
try
    k=is2rc(A);
    k_exp=1.57079632679490e-10;
    assert_checkalmostequal(k,k_exp)
catch
    [error_msg,error_num] = lasterror(%t);
    
    disp("error number - ");
    disp(error_num);
    
    disp("error message - ");
    disp(error_msg);
end

//**Result-->PASS
//****************************************************************************

//**(6)Giving zero as input
A=0;
try
    k=is2rc(A);
    k_exp=0;
    assert_checkalmostequal(k,k_exp)
catch
    [error_msg,error_num] = lasterror(%t);
    
    disp("error number - ");
    disp(error_num);
    
    disp("error message - ");
    disp(error_msg);
end

//**Result-->PASS
//****************************************************************************
