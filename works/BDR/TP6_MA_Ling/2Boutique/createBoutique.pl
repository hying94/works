% Déclarations de types
%:- type(articles(aid:int, anom:string, acoul:string)).
%:- type(fournisseurs(fid:int, fnom:string, fad:string)).
%:- type(catalogue(fid:int, aid:int, prix:real)).       

articles(1, 'Left Handed Toaster Cover', 'rouge').
articles(2, 'Smoke Shifter End', 'noir').
articles(3, 'Acme Widget Washer', 'rouge').
articles(4, 'Acme Widget Washer', 'argente').
articles(5, 'Brake for Crop Circles Sticker', 'opaque').
articles(6, 'Anti-Gravity Turbine Generator', 'cyan').
articles(7, 'Anti-Gravity Turbine Generator', 'magenta').
articles(8, 'Fire Hydrant Cap', 'rouge').
articles(9, '7 Segment Display', 'vert').
articles(10, 'Microsd Card USB Reader', 'vert').
articles(11, 'Ferrari F430', 'rouge').
articles(12, 'Microsd Card USB Reader', 'rouge').

fournisseurs(1, 'kiventout', '59 rue du Chti, F-75001 Paris').
fournisseurs(2, 'Big Red Tool and Die', '4 My Way, Bermuda Shorts, OR 90305, USA').
fournisseurs(3, 'Perfunctory Parts', '99999 Short Pier, Terra Del Fuego, TX 41299, USA').
fournisseurs(4, 'Alien Aircaft Inc.', '2 Groom Lake, Rachel, NV 51902, USA').
fournisseurs(5, 'Autolux', 'Piazza del Paris, 8, I-20121 Milano').
fournisseurs(6, 'Vendrien', '8 Bankrupt Road, Detroit, USA').

catalogue(1, 1, 36.10).
catalogue(1, 2, 42.30).
catalogue(1, 3, 15.30).
catalogue(1, 4, 20.50).
catalogue(1, 5, 20.50).
catalogue(1, 6, 124.23).
catalogue(1, 7, 124.23).
catalogue(1, 8, 11.70).
catalogue(1, 9, 75.20).
catalogue(1, 10, 5.20).
catalogue(1, 11, 234543.21).
catalogue(1, 12, 6.20).
catalogue(2, 1, 16.50).
catalogue(2, 7, 0.55).
catalogue(2, 8, 7.95).
catalogue(3, 8, 12.50).
catalogue(3, 9, 1.00).
catalogue(4, 4, 57.3).
catalogue(4, 5, 22.20).
catalogue(4, 8, 48.6).
catalogue(5, 11, 234555.67).

deuxrouges(X,F1,F2,A1,A2):- fournisseurs(F1,X,_),fournisseurs(F2,_,_),catalogue(F1,A1,_),catalogue(F2,A2,_),articles(A1,_,'rouge'),articles(A2,_,'rouge'),A1\=A2,F1=F2.
bonmarche(F,X,P) :- fournisseurs(F,X,_),catalogue(F,_,P),P<10.

