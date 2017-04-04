function ciphertext = cipher (plaintext, w, s_box, poly_mat,ind_matleft)
 %state = reshape (plaintext, 4, 4)
 state = plaintext
 round_key = (w(1:4, :))';
 state = bitxor(round_key,state);
 for i_round = 1 : 9
 state = s_box (state + 1);
 state = state(ind_matleft);
 state = mix_columns (state, poly_mat);
 round_key = (w((1:4) + 4*i_round, :))';
 state = bitxor (state, round_key);
end
 state = s_box (state+1);
 state = state(ind_matleft);
 round_key = (w(41:44, :))';
 ciphertext = bitxor (state, round_key);
 %ciphertext = reshape (state, 1, 16)