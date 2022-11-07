function [acuracia, precisao, recall, falsoalarme, falsaomisao]=medidas(VP, VN, FN, FP)
    
    total = (VP + VN + FN + FP);
    acuracia = (VP + VN)/ total;
    precisao = VP / (VP + FP);
    recall = VP / (VP + FN);
    falsoalarme = FP / (VP + FP);
    falsaomisao = FN / (FN + VN);
    
endfunction
