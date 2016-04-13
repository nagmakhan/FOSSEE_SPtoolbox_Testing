//Testing function seqperiod.sci
//Author: Nagma Khan

funcprot(0)
exec('seqperiod.sci',-1);

//*****************************************************************************
//TEST 2
//Testing with various inputs for correct outputs
//*****************************************************************************

//**(1)2D Matrix with pattern
A=[2 3 4;2 1 5;2 3 6];
try
    [p,num]=seqperiod(A);
    p_exp=[1 2 3];
    num_exp=[3 1.5 1];
    assert_checkalmostequal(p,p_exp)
    assert_checkalmostequal(num,num_exp)
catch
    [error_msg,error_num] = lasterror(%t);
    
    disp("error number - ");
    disp(error_num);
    
    disp("error message - ");
    disp(error_msg);
end



//**Result-->PASS
//*****************************************************************************

//**(2)2D Matrix with first dimension 1
A=zeros(1,2);
try
    [p,num]=seqperiod(A);
    p_exp=1;
    num_exp=2;
    assert_checkalmostequal(p,p_exp)
    assert_checkalmostequal(num,num_exp)
catch
    [error_msg,error_num] = lasterror(%t);
    
    disp("error number - ");
    disp(error_num);
    
    disp("error message - ");
    disp(error_msg);
end




//**Result-->PASS
//*****************************************************************************

//**(3)3D Matrix with first dimension 1
A=zeros(1,2,3);

try
    [p,num]=seqperiod(A);
    p_exp=hypermat([1 1 3],[1 1 1]);
    num_exp=hypermat([1 1 3],2*[1 1 1]);
    assert_checkalmostequal(p,p_exp);
    assert_checkalmostequal(num,num_exp);
catch
    [error_msg,error_num] = lasterror(%t);
    
    disp("error number - ");
    disp(error_num);
    
    disp("error message - ");
    disp(error_msg);
end

//**Result-->FAIL
//*****************************************************************************

//**(4)4D Matrix with first dimension 1
A=zeros(1,2,2,2);
try
    [p,num]=seqperiod(A);
    p_exp=hypermat([1 1 2 2],[1 1 1 1]);
    num_exp=hypermat([1 1 2 2],2*[1 1 1 1]);

    assert_checkalmostequal(p,p_exp)
    assert_checkalmostequal(num,num_exp)
catch
    [error_msg,error_num] = lasterror(%t);
    
    disp("error number - ");
    disp(error_num);
    
    disp("error message - ");
    disp(error_msg);
end

//**Result-->FAIL-Can't deal if more than 2D with first dimension as 1
//*****************************************************************************

//**(5)Zero as an input
A=zeros(1);
try
    [p,num]=seqperiod(A);
    p_exp=1;
    num_exp=1;
    assert_checkalmostequal(p,p_exp)
    assert_checkalmostequal(num,num_exp)
catch
    [error_msg,error_num] = lasterror(%t);
    
    disp("error number - ");
    disp(error_num);
    
    disp("error message - ");
    disp(error_msg);
end

//**Result-->FAIL-An exception occurs
//*****************************************************************************

//**(6)Random 1D input
A=rand(1);
try
    [p,num]=seqperiod(A);
    p_exp=1;
    num_exp=1;
    assert_checkalmostequal(p,p_exp)
    assert_checkalmostequal(num,num_exp)
catch
    [error_msg,error_num] = lasterror(%t);
    
    disp("error number - ");
    disp(error_num);
    
    disp("error message - ");
    disp(error_msg);
end

//**Result-->FAIL-An exception occurs, can't deal with 1D cases
//*****************************************************************************

//**(7)Infinity as input
A=%inf;
try
    [p,num]=seqperiod(A);
    p_exp=1;
    num_exp=1;
    assert_checkalmostequal(p,p_exp)
    assert_checkalmostequal(num,num_exp)
catch
    [error_msg,error_num] = lasterror(%t);
    
    disp("error number - ");
    disp(error_num);
    
    disp("error message - ");
    disp(error_msg);
end

//**Result-->FAIL-An exception occurs.
//*****************************************************************************

//**(8)2D Infinity matrix as input
A=%inf*ones(2,3);
try
    [p,num]=seqperiod(A);
    p_exp=[1 1 1];
    num_exp=[2 2 2];
    assert_checkalmostequal(p,p_exp)
    assert_checkalmostequal(num,num_exp)
catch
    [error_msg,error_num] = lasterror(%t);
    
    disp("error number - ");
    disp(error_num);
    
    disp("error message - ");
    disp(error_msg);
end

//**Result-->PASS
//*****************************************************************************

//**(9)Long vector having pattern
A=[1 2 3]*ones(3,1000); //will give 1x1000 vector containing 6
try
    [p,num]=seqperiod(A);
    p_exp=1;
    num_exp=1000;
    assert_checkalmostequal(p,p_exp)
    assert_checkalmostequal(num,num_exp)
catch
    [error_msg,error_num] = lasterror(%t);
    
    disp("error number - ");
    disp(error_num);
    
    disp("error message - ");
    disp(error_msg);
end

//**Result-->PASS
//*****************************************************************************

//**(10)2D Matrix with many columns, having pattern
A=[1 2 3;1 2 3]*ones(3,1000); //will give 2x1000 vector containing 6
try
    [p,num]=seqperiod(A);
    p_exp=1*ones(1,1000);
    num_exp=2*ones(1,1000);
    assert_checkalmostequal(p,p_exp)
    assert_checkalmostequal(num,num_exp)
catch
    [error_msg,error_num] = lasterror(%t);
    
    disp("error number - ");
    disp(error_num);
    
    disp("error message - ");
    disp(error_msg);
end

//**Result-->PASS
//*****************************************************************************
