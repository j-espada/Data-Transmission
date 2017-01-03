# m1 message 1 in binary
# m2 message 2 in binary
# this functions returns the hamming distance value between two
#messages
function d = hamming_distance(m1,m2)
  d = 0
  printf("m1 -> %d \n", length(m1))
  printf("m2 -> %d \n", length(m2))
  if(length(m1)==length(m2))
    for i=1:length(m1)
      if(m1(i) != m2(i))
        d++
      endif  
    endfor  
  else
    printf("The messages must have the same lenght \n")  
  endif
   d
endfunction  
      