%Prolog
%1 El nombre de los objetos y relaciones deben empezar con minusculas
%2 Se escrive primero la relacion y entre parentesis el objeto, ejemplo: es_perro(blacky).
%3 Se permite el uso de _ entre caracteres
%4 Se debe terminar un hecho

padre(valentin,ignacio). %este es mi abuelo

padre(valentin,elizabeth).

padre(valentin,marizol).

padre(valentin,maria).

padre(valentin,marco).

padre(valentin,alberto).

padre(ignacio,luis). %este soy yo

padre(ignacio,angello).

padre(ignacio,valentino).

padre(ignacio,ian).

padre(ignacio,gabriela).


madre(lucia,ignacio).

madre(lucia,elizabeth).

madre(lucia,marizol).

madre(lucia,maria).

madre(lucia,marco).

madre(lucia,alberto).


madre(conni,luis).

madre(conni,gabriela).

madre(conni,sabrina).

madre(conni,jesse).


mujer(lucia).

mujer(marizol).

mujer(maria).

mujer(elizabeth).

mujer(conni).

mujer(sabrina).

mujer(jesse).

mujer(gabriela).


hombre(valentin).

hombre(marco).

hombre(alberto).

hombre(ignacio).

hombre(ian).

hombre(angello).

hombre(valentino).

hombre(luis).



progenitor(X,Y) :-  madre(X,Y).

progenitor(X,Y) :- padre(X,Y).


abuela(X,Y) :- progenitor(X,Z),progenitor(Z,Y),mujer(X).

abuelo(A,Y) :- progenitor(A,Z),progenitor(Z,Y),hombre(A).


hermanos(X,Y):- progenitor(Z,X),progenitor(Z,Y), not(X==Y).

hermano(X,Y):- hombre(X),hermanos(X,Y).

hermana(X,Y):- mujer(X),hermanos(X,Y).









