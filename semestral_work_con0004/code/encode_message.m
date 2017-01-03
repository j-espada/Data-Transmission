# message - array with the message
# n - numbers of bits suposed to exist
# m - number of 1 bits supposed to exist
function new_message = encode_message(message,m,n)
  n_ones = ones(message)
  new_message = []
  #copy original message
  for i = 1: length(message)
    new_message(i) = message(i)
  endfor
  # end of copy 
  counter = length(message)+1
  while(n_ones < m || counter <= n)
    if(n_ones < m)
      new_message(counter) = 1
    else
      new_message(counter) = 0
    endif
    counter++
    n_ones++
  endwhile
  printf("----------------------------------")
endfunction




