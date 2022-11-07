function Aki = compression(A,k)
    //[U, S, V] = svd(A);
    Ad = double(A);
    [UL, SL, VL] = svd(Ad);
    Aki = UL(:,1:k)*SL(1:k, 1:k)*VL'(1:k,:);
endfunction

function imgplot_horizontal(A, Ak32, Ak64, Ak128)
    Ak32 = iconvert(Ak32, 11);
    Ak64 = iconvert(Ak64, 11);
    Ak128 = iconvert(Ak128, 11);
    subplot(2,2,1);title("A", "fontsize",3);imshow(A);
    subplot(2,2,2);title("Ak32", "fontsize",3);imshow(Ak32);
    subplot(2,2,3);title("Ak64", "fontsize",3);imshow(Ak64);
    subplot(2,2,4);title("Ak128", "fontsize",3);imshow(Ak128);
endfunction

function imgplot_vertical(A, Ak32, Ak64, Ak128)
    Ak32 = iconvert(Ak32, 11);
    Ak64 = iconvert(Ak64, 11);
    Ak128 = iconvert(Ak128, 11);
    subplot(1,2,1);title("A", "fontsize",3);imshow(A);
    subplot(1,2,2);title("Ak32", "fontsize",3);imshow(Ak32);
    subplot(1,2,3);title("Ak64", "fontsize",3);imshow(Ak64);
    subplot(1,2,4);title("Ak128", "fontsize",3);imshow(Ak128);
endfunction
