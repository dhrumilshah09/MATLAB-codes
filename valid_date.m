function valid = valid_date(year,month,day)
if nargin ==3
if ~isscalar(year) || year<1 || year ~=fix(year)
    valid = false;
    return
elseif ~isscalar(month) || month<1 || month ~=fix(month)
    valid = false;
    return
elseif ~isscalar(day) || day<1 || day ~=fix(day)
    valid = false;
    return
end
end
if ((month == 1) || (month ==3) || (month ==5) || (month ==7) || (month ==8) || (month ==10) || (month ==12)) && day<=31
    valid = true;
    fprintf('Cond 1');
    return
elseif ((month ==4) || (month ==6) || (month ==9) || (month ==11)) && (day<=30) 
    valid = true;
    fprintf('Cond 2');
    return
elseif ((month == 2) && rem(year,4) ==0 && (rem(year,400) ==0 || rem(year,100) ~=0)  ) && day<=29
    valid = true;
    fprintf('Cond 3');
    return
elseif (month == 2 && (rem(year,100) ==0 || rem(year,400) ~=0) && rem(year,4) ~=0) && day<=28
    valid = true;
    fprintf('Cond 4');
else
    valid = false; 
    fprintf('Cond Final');
    return
end 