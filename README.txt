Giuglan Luiza-Viorica 311CB

PROXIMAL

2x2
	- calculez cati pasi trebuie facuti
	- initializez vectorul cu numere de la 1 la 2 cu diferenta STEP intre ele
	- aproximez valorile la 1 sau 2
	- setez valoarea de la mijloc pe 2
	- parcurg si verific in ce zona se afla punctul si ii dau valoarea buna

resize
	- calculez factorii de scalare
	- parcurg si inmultesc coordonatele cu 1/s_x sau 1/s_y
		(corespunzator matricei de transformare)
	- trec in coordonatele [1, n]
	- aproximez pentru a putea gasi cel mai apropiat pixel
	- calculez valoarea pixelului din imaginea finala

rotate
	- calculez coordonatele punctului din imaginea initiala prin inmultirea
		cu matricea de transformare a coordonatelor curente
	- trec in sistemul [1, n]
	- verific daca coordonatele calculate nu se incadreaza in
		imaginea initiala si pun un pixel negru
	- calculez aproximarea inferioara si superioara si apelez functia pentru coeficienti
	- calculez valoarea pixelului din imaginea finala

coeficienti
	- am urmat indrumarile din tema pentru a calcula A, b si a


BICUBIC
fx, fy si fxy
	- am pus formulele indicate in tema

precalc_d
	- parcurg matricile si le initializez cu derivatele calculate anterior

coeficienti
	- am urmat indrumarile din tema pentru a calcula matricile si A

resize
	- am calculat matricea de transformare si inversa ei
	- am calculat Ix, Iy si Ixy folosind functiile anterioare
	- calculez coordonatele punctului din imaginea initiala prin inmultirea
		cu matricea de transformare a coordonatelor curente
	- trec in sistemul de coordonate [1, n]
	- calculez punctele ce inconjoara pixelul
		(aproximarea coordonatelor prin lipsa si adaos)
	- daca punctul intrece marginile acesta va lua valoarea marginei respective -1 (m sau n)
	- se calculeaza coeficientii
	- se calculeaza pixelul din imaginea finala
