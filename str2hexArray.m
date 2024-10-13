
function [result, errmesg]=str2hexArray(str)

  result = 0;
  errmesg = false;
  %str = '0123456789abcdef'

  TF = ischar(str);

  if(TF == false)
    return;
  end

  len = length(str);
  if(len == 0)
    return;
  end

  j = 0;
  str_TF = [];
  str_TF1 = [];
  for i = 1:2:len;

    if(i==len)

      errmesg = isHex(str(i));
      if(errmesg == false)
        return;
      else
        j = j + 1;
        result(j) = sscanf(str(i),'%x');
      end

    else
      errmesg = isHex(str(i));
      errmesg1 = isHex(str(i+1));
      if(errmesg == false)
        return;
      elseif(errmesg1 == false)
        return;
      else
        j = j + 1;
        result(j) = sscanf(str(i),'%x')*16 + sscanf(str(i+1),'%x');
      end

    endif
  end

  errmesg = true;

endfunction


