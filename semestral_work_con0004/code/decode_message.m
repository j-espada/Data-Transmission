# message - array with the message
# x - number of original message bits
function decode_message(message,x)
 new_message = []
  for i = 1: x
    new_message(i) = message(i)
  endfor
printf("--------------------------------------\n")  
endfunction