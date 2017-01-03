function run()
  m = 3
  n = 6
  printf("Enconding Messages\n")
  original_data = [0 0 0;0 0 1;0 1 0;1 0 0;1 0 1;1 1 0;1 1 1]
   for i = 1: size(original_data)
    temp = original_data(i,:)
    encode_message(temp,m,n)
   endfor
   
   printf("Decode Messages\n")
   original_data = [0 0 0 1 1 1;0 0 1 1 1 0;0 1 0 1 1 0;1 0 0 1 1 0;1 0 1 1 0 0;1 1 0 1 0 0]
   for i = 1: size(original_data)
    temp = original_data(i,:)
    decode_message(temp,3)
   endfor
   
   
   printf("\n Sending Messages with errors \n")
    messages_with_error = [1 0 0 1 1 1; 0 0 1 1 0 0; 
                     0 0 0 1 1 0; 0 0 0 1 0 0; 
                     0 0 1 1 1 1; 1 1 1 1 0 1; 1 1 1 0 0 1;
                     0 0 0 1 1 1; 1 1 1 0 0 0; 0 0 1 1 1 0]
   for i = 1: size(messages_with_error)
    temp = messages_with_error(i,:)
    error_dectetion(temp,m,n)
   endfor
   
   message_to_correct = [0 0 1 1 1 1;1 0 0 0 0 1;1 1 1 0 0 1]
   dict = [0 0 0 1 1 1; 0 1 0 1 0 1; 0 1 1 1 0 0;1 1 0 0 0 1; 1 1 1 0 0 0] 
   
   for i = 1: size(message_to_correct)
    temp = message_to_correct(i,:)
    remove_error(temp,dict)
   endfor
   
endfunction

