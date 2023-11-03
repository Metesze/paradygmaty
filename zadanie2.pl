osoba(jan, adam, ewa, mezczyzna, 35).
osoba(anna, adam, ewa, kobieta, 30).
osoba(piotr, jan, anna, mezczyzna, 10).
osoba(maria, jan, anna, kobieta, 8).
osoba(krzysztof, adam, ewa, mezczyzna, 40).
osoba(zofia, adam, ewa, kobieta, 38).

rodzenstwo(X, Y) :-
    osoba(X, OjciecX, MatkaX, _, _),
    osoba(Y, OjciecY, MatkaY, _, _),
    (OjciecX = OjciecY, MatkaX = MatkaY; OjciecX = MatkaY, MatkaX = OjciecY),
    X \= Y.

siostra(X, Y) :-
    osoba(X, OjciecX, MatkaX, kobieta, _),
    osoba(Y, OjciecY, MatkaY, kobieta, _),
    (OjciecX = OjciecY, MatkaX = MatkaY; OjciecX = MatkaY, MatkaX = OjciecY),
    X \= Y.

brat(X, Y) :-
    osoba(X, OjciecX, MatkaX, mezczyzna, _),
    osoba(Y, OjciecY, MatkaY, mezczyzna, _),
    (OjciecX = OjciecY, MatkaX = MatkaY; OjciecX = MatkaY, MatkaX = OjciecY),
    X \= Y.
