osoba(jan, 30, sport).
osoba(anna, 25, czytanie).
osoba(maria, 40, gotowanie).
osoba(piotr, 35, podró¿e).
osoba(krzysztof, 28, kino).
starsza(X, Y) :- osoba(X, WiekX, _), osoba(Y, WiekY, _), WiekX > WiekY, write(X), write(' jest starsza od '), write(Y).
