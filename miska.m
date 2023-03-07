% Preberi vhodne podatke
m = input("Vnesite število vrstic diskretne mreže: ");
n = input("Vnesite število stolpcev diskretne mreže: ");

% Preveri ali sta začetna in končna lokacija znotraj mreže
zac_lokacija = input("Vnesite začetno lokacijo (miška) [vrstica, stolpec]: ");
if any(zac_lokacija < 1) || any(zac_lokacija > [m, n])
    error("Začetna točka mora biti znotraj meja mreže.")
end
sir_lokacija = input("Vnesite končno lokacijo (sir) [vrstica, stolpec]: ");
if any(sir_lokacija < 1) || any(sir_lokacija > [m, n])
    error("Končna točka mora biti znotraj meja mreže.")
end

st_korakov = simulacijaGibanja(m, n, zac_lokacija, sir_lokacija);

fprintf('Miška je potrebovala %d korakov, da je prišla do sira.\n', st_korakov);