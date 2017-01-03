function retval = ones(message)
  retval = 0
  for i = 1 : length(message)
    if(message(i) == 1)
      retval++
     endif
   endfor
endfunction