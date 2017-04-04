%function[ciphertext]= aesmain(plaintext)
ssi;
plaintext=['A' 'B' 'C' 'D' 'E' 'F' 'G' 'H' 'I' 'J' 'K' 'L' 'M' 'N' 'O' 'P'];
plain=reshape(plaintext,4,4);
plain = abs (plain);
key = ['1' '2' '3' '4' '5' '6' '7' '8' '9' '1' '2' '3' '4' '5' '6' '7'];
key=abs(key);
w = key_expansion (key, s_box, rcon);
 ciphertext = cipher (plain, w, s_box, poly_mat,ind_matleft);
 ciphertext = reshape(ciphertext,1,16);
 ciphertext = char(ciphertext);
 
  