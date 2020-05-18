#select * from grupa;

select
b.naziv					    as smjer,
a.naziv 					as grupa,
concat(d.ime, ' ', d.prezime)  as predavac,
c.iban, d.oib, b.cijena, a.datumpocetka
from grupa a 
inner join smjer b 			on a.smjer=b.sifra
inner join predavac c 		on a.predavac=c.sifra
inner join osoba d 			on c.osoba=d.sifra;
#select * from smjer;

#right join rjede se koristi
select b.naziv as smjer, a.naziv as grupa
from grupa a
right join smjer b on a.smjer=b.sifra;
#left join cesce se koristi
select a.naziv as smjer, b.naziv as grupa
from smjer a
left join grupa b on a.sifra=b.smjer;
#zadatak prikazi sve polaznike php programiranja:
select o.ime ,o.prezime from smjer s left join grupa g on s.sifra=g.smjer
left join clan c on g.sifra=c.grupa
left join polaznik p on c.polaznik=p.sifra
left join osoba o on p.osoba=o.sifra
where s.naziv='PHP programiranje';
#knjiznica
#ispisati imena i prezimena autora koji su objavili knjigu u mjestu osijek
use knjiznica;

use edunovapp21;
select * from grupa;

select b.naziv as smjer, a.naziv as grupa, concat(d.ime, ' ',d.prezime) as predavac
from grupa a 
inner join smjer b on a.smjer=b.sifra
inner join predavac c on a.predavac = c.sifra
inner join osoba d on c.osoba = d.sifra;

select * from smjer;

select smjer.naziv as smjer, grupa.naziv as grupa, osoba.ime as predavac
from grupa
inner join smjer on grupa.smjer=smjer.sifra
inner join predavac on grupa.predavac=predavac.sifra
inner join osoba on predavac.osoba =osoba.sifra;

#smjer php programiranje / grupa pp21 / predavac onealshaquilel
select smjer.naziv as smjer, grupa.naziv as grupa, concat(osoba.ime, ' ',osoba.prezime) as predavac, predavac.iban,smjer.cijena,
grupa.datumpocetka
from grupa
inner join smjer on grupa.smjer=smjer.sifra 
inner join predavac on grupa.predavac =predavac.sifra 
inner join osoba on predavac.osoba =osoba.sifra;

#prikazi sve polaznike smjerova php programiranje
select osoba.ime, osoba.prezime from smjer
inner join grupa on grupa.smjer = smjer.sifra 
inner join clan on clan.grupa = grupa.sifra 
inner join polaznik on clan.polaznik = polaznik.sifra 
inner join osoba on polaznik.osoba = osoba.sifra
where smjer.naziv ='php programiranje';
use knjiznica;
#ispisati imena i prezimena autora koji su objavili knjigu u mjestu osijek
select autor.ime, autor.prezime from autor
inner join katalog on katalog.autor=autor.sifra
inner join mjesto on katalog.mjesto=mjesto.sifra
where mjesto.naziv ='Osijek';


select concat(a.ime, ' ', a.prezime) as opis
from autor a
inner join katalog k on k.autor=a.sifra 
inner join mjesto m on k.mjesto=m.sifra
where m.naziv='Osijek';

#zavrsni rad da ne vidim brojke uopće
use baza;
select * from povijestkretanjanaloga;
select glavnatablica.partnumber as partnumber, povijestkretanjanaloga.kolicina, povijestkretanjanaloga.status, povijestkretanjanaloga.datum, concat(radnik.ime, ' ', radnik.prezime) as ime_radnika from povijestkretanjanaloga
inner join glavnatablica on povijestkretanjanaloga.glavnatablica = glavnatablica.id 
inner join radnik on povijestkretanjanaloga.radnik=radnik.id
where povijestkretanjanaloga.status='izrezano';

select g.partnumber, r.ime, r.prezime, g.partnumber, p.datum,p.kolicina from povijestkretanjanaloga p
inner join glavnatablica g on p.glavnatablica =g.id
inner join radnik r on p.radnik=r.id;


















