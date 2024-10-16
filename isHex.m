% Determine if a string is a hexadecimal number
function errmesg = isHex(str)

  errmesg = false;
  %str = '0123456789abcdef';

  template ='0123456789abcdefABCDEF';

  len = length(str);
  if(len == 0)
    return;
  end

  str_TF = [];

  for i = 1: len
    str_TF = strfind(template,str(i));
    if(isempty(str_TF))
      return;
    end
  end

  errmesg = true;

endfunction
