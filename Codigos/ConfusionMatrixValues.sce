function [VP, VN, FN, FP]=check(prev_tt, y_tt)
    
    [VP]=check_pos(prev_tt, y_tt); //verdadeiro positivo
    [VN]=check_neg(prev_tt, y_tt); //verdadeiro negativo
    [FP]=check_neg_pos(prev_tt, y_tt); //falso negativo
    [FN]=check_pos_neg(prev_tt, y_tt); //falso positivo
    
endfunction
  
function [VP]=check_pos(prev_tt, y_tt) //diz que tem, e tem mesmo
    n = size(prev_tt, 1);
    VP = 0;
    for i = 1:n
        if (prev_tt(i) > 0 & y_tt(i) == 1)
            VP = VP + 1;
        end
    end
endfunction

function [VN]=check_neg(prev_tt, y_tt) //diz que não tem, e não tem
    n = size(prev_tt, 1);
    VN = 0;
    for i = 1:n
        if (prev_tt(i) < 0 & y_tt(i) == -1)
            VN = VN + 1;
        end
    end
endfunction

function [FP]=check_neg_pos(prev_tt, y_tt) //diz que tem, mas não tem
    n = size(prev_tt, 1);
    FP = 0;
    for i = 1:n
        if (prev_tt(i) > 0 & y_tt(i) == -1)
            FP = FP + 1;
        end
    end
endfunction

function [FN]=check_pos_neg(prev_tt, y_tt) //diz que não tem, mas tem 
    n = size(prev_tt, 1);
    FN = 0;
    for i = 1:n
        if (prev_tt(i) < 0 & y_tt(i) == 1)
            FN = FN + 1;
        end
    end
endfunction
