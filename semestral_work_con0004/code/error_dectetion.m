# message - array containing the message in binary
# n - numbers of bits suposed to exist
# m - number of 1 bits supposed to exist
function error_dectetion(message,m,n)
  n_ones = ones(message)
  if(n_ones == m)
     printf("\n No error \n")
  elseif(n_ones < m)
        printf("Case: m - %d \n",(m-n_ones))
  elseif(n_ones > m)
        printf("Case: m + %d \n",(n_ones-m))      
   endif  
   printf("-------------------------------\n")
endfunction

