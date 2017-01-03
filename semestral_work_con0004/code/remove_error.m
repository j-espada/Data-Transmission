function remove_error(m,dict)
  c = 20000000000000
  counter = 1 
  message = []
  store_values = []
  for i= 1:rows(dict)
    dict_temp = dict(i,:)
    printf("dict_temp -> %d \n", length(dict_temp))
    temp = hamming_distance(m,dict_temp)
    store_values(i)=temp
    if(temp < c)
      c = temp
      message = dict_temp
      counter = counter + 1
    endif
  endfor
    printf("input message")
    m
    message
    retransmit(store_values)
      printf("----------------\n")
endfunction

function retransmit(stored)
  aux = 0
  x = min(stored)
  for i=1:length(stored)
    y = stored(i)
    if(x == y)
      aux = aux + 1
    endif
  endfor
  if(aux > 1)
    printf("Restransmission \n")
  else
    printf("No Restransmission nedeed \n")
  endif
    

endfunction
