function a = proximal_coef(f, x1, y1, x2, y2)
    % =========================================================================
    % Calculeaza coeficientii a pentru Interpolarea Proximala intre punctele
    % (x1, y1), (x1, y2), (x2, y1) si (x2, y2).
    % =========================================================================
    
    % TODO: Calculeaza matricea A.
    A = zeros(4);
    A(:, 1) = 1;
    A(1, 2) = x1;
    A(2, 2) = x1;
    A(3, 2) = x2;
    A(4, 2) = x2;
    
    A(1, 3) = y1;
    A(2, 3) = y2;
    A(3, 3) = y1;
    A(4, 3) = y2;
    
    A(1, 4) = x1 * y1;
    A(2, 4) = x1 * y2;
    A(3, 4) = x2 * y1;
    A(4, 4) = x2 * y2;
    % TODO: Calculeaza vectorul b.    
    b = zeros(4, 1);
    b(1, 1) = f(y1, x1);
    b(2, 1) = f(y2, x1);
    b(3, 1) = f(y1, x2);
    b(4, 1) = f(y2, x2);
    % TODO: Calculeaza coeficientii.
    a = A \ b;
endfunction