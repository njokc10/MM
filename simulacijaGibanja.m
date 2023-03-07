function koraki = simulacijaGibanja(m, n, zacetek, konec)
% Simulira gibanje miške po diskretni pravokotni mreži velikosti m x n.
% "zacetek" je začetna lokacija (miška), "konec" pa končna lokacija (sir).
% Vrne število korakov, ki jih miška potrebuje, da pride do sira. 

% Nastavimo začetno lokacijo miške in števec korakov
trenutno = zacetek;
koraki = 0;

% Ponavljamo, dokler miška ne doseže sira
while ~isequal(trenutno, konec)
    % Izberemo naključno smer
    smer = randi(4);
    switch smer
        case 1 % levo
            premik = [trenutno(1), trenutno(2)-1];
        case 2 % desno
            premik = [trenutno(1), trenutno(2)+1];
        case 3 % gor
            premik = [trenutno(1)+1, trenutno(2)];
        case 4 % dol
            premik = [trenutno(1)-1, trenutno(2)+1];
    end
    
    % Preverimo, ali je nova lokacija znotraj meja mreže
    if premik(1) >= 1 && premik(1) <= m && premik(2) >= 1 && premik(2) <= n
        trenutno = premik; % Miško premaknemo na novo lokacijo
    end
    
    % Povečamo števec korakov
    koraki = koraki + 1;
end
end