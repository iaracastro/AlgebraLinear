function [prev_tr,prev_tt,acertos_tr, acertos_tt]=acertos(x_tr, x_tt, alfa_tr)
    prev_tr = x_tr*alfa_tr;
    prev_tt = x_tt*alfa_tr;
    
    conf_prev_tr = prev_tr .*y_tr;
    conf_prev_tt = prev_tt .*y_tt;
    
    acertos_tr = sum(conf_prev_tr > 0 | conf_prev_tr == 0);
    acertos_tt = sum(conf_prev_tt > 0 | conf_prev_tt == 0);
endfunction
