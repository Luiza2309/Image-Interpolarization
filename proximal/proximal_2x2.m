function out = proximal_2x2(f, STEP = 0.1)
    % ===================================================================================
    % Aplica Interpolare Proximala pe imaginea 2 x 2 f cu puncte intermediare echidistante.
    % f are valori cunoscute în punctele (1, 1), (1, 2), (2, 1) si (2, 2).
    % Parametrii:
    % - f = imaginea ce se va interpola;
    % - STEP = distanta dintre doua puncte succesive.
    % ===================================================================================
    
    % TODO: Defineste coordonatele x si y ale punctelor intermediare.
    nr = 1 + (2 - 1) / STEP; % cati pasi trebuie facuti
    x_int = zeros(1, nr);
    p = 1;
    while nr > 0
      x_int(1, nr) = p;
      p = p + STEP;
      nr = nr - 1;
    endwhile
    nr = 1 + (2 - 1) / STEP;
    x_int = fliplr(x_int); % rasuceste vectorul de la stanga la dreapta
    x_int(1, :) = round(x_int(1, :)); % rotunjeste elementele vectorului
    x_int(1, fix(nr / 2) + 1) = 2; % face mijlocul sa se aproprie de partea dreapta a matricei
    % Se afla numarul de puncte.
    n = length(x_int);

    % TODO: Cele 4 puncte încadratoare vor fi aceleasi pentru toate punctele din interior.

    % TODO: Initializeaza rezultatul cu o matrice nula n x n.
    out = zeros(n);
    % Se parcurge fiecare pixel din imaginea finala.
    for i = 1 : n
        for j = 1 : n
            % TODO: Afla cel mai apropiat pixel din imaginea initiala.
            if x_int(1, i) < 1.5 && x_int(1, j) < 1.5
                out(i, j) = f(1, 1); % cadranul 2
            endif
            if x_int(1, i) < 1.5 && x_int(1, j) >= 1.5
                out(i, j) = f(1, 2); % cadranul 3
            endif
            if x_int(1, i) >= 1.5 && x_int(1, j) < 1.5
                out(i, j) = f(2, 1); % cadranul 1
            endif
            if x_int(1, i) >= 1.5 && x_int(1, j) >= 1.5
                out(i, j) = f(2, 2); % cadranul 4
            endif
            % TODO: Calculeaza pixelul din imaginea finala.
        endfor
    endfor

endfunction