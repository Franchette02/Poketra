CREATE DATABASE poketra;
\c poketra;

-- CREATE TABLE types(
--     id SERIAL PRIMARY key,
--     nom text
-- );
-- INSERT into types(nom) VALUES('sac a dos');
-- INSERT into types(nom) VALUES('sac a main');
-- INSERT into types(nom) VALUES('porte feuille');
-- SELECT * FROM types;

--  look(luxe,normal,debraille)
CREATE Table look(
    id SERIAL PRIMARY KEY,
    nom TEXT
);
SELECT * FROM look;
-- mp(cuir,toilede Coton,similicuir02.35,toildeCoton)
CREATE Table mp(
    id SERIAL PRIMARY KEY,
    nom TEXT,
    pu float
);
SELECT * FROM mp;
CREATE Table MatierePremieresLook(
    id SERIAL PRIMARY KEY,
     idL int,
     idM int,
    Foreign Key (idL) REFERENCES look(id),
    Foreign Key (idM) REFERENCES mp(id)
);
-- SELECT * FROM matierepremiereslook;
-- drop VIEW getmplook;
-- poketra
CREATE TABLE Types(
    id SERIAL PRIMARY key,
    nom VARCHAR(25)
);
CREATE TABLE taille(
    id SERIAL PRIMARY key,
    nom VARCHAR(25)
);
CREATE TABLE poketra(
id SERIAL PRIMARY key,
idTypes int ,
idLook int,
idTaille int ,
Foreign Key (idTypes) REFERENCES  Types(id),
Foreign Key (idLook) REFERENCES  look(id),
Foreign Key (idTaille) REFERENCES  taille(id)
);
CREATE TABLE detailP (
    idPoketra int,
    idM int ,
    qte double precision,
    Foreign Key (idPoketra) REFERENCES poketra(id),
    Foreign Key (idM) REFERENCES mp(id)
);
CREATE TABLE stock_mp(
    id SERIAL PRIMARY KEY,
    idm int,
    isa int,
    prix float,
    date DATE,
    Foreign Key (idm) REFERENCES mp(id)
);
alter table histo add column type varchar(50);
delete from stock_mp;
CREATE TABLE histo(
    id SERIAL PRIMARY KEY,
    idm int,
    isa int,
    date DATE,
    Foreign Key (idm) REFERENCES mp(id)
);
CREATE TABLE histopf(
    id SERIAL PRIMARY KEY,
    idTypes int,
    isa int,
    date DATE,
    Foreign Key (idTypes) REFERENCES Types(id)
);
create TABLE mouvement_stockpf(
    id serial primary key,
    idTypes int ,
    quantite int ,
    type varchar(50),
    date date,
    Foreign Key (idTypes) REFERENCES Types(id)
);
create TABLE mouvement_stock(
    id serial primary key,
    idm int ,
    quantite int ,
    type varchar(50),
    date date,
    Foreign Key (idm) REFERENCES mp(id)
);
-- alter table mouvement_stock add column type VARCHAR(50);
select * from stock_mp;
delete from mouvement_stock;
CREATE TABLE employer(
    id SERIAL PRIMARY key,
    types VARCHAR(27),
    salaire double precision 
);
CREATE TABLE pv(
    id SERIAL PRIMARY key,
    idTypes int,
    idTaille int,
    pv double precision ,
    Foreign Key (idTypes) REFERENCES Types(id),
    Foreign Key (idTaille) REFERENCES taille(id)
);
CREATE TABLE fabrication(
    id serial PRIMARY KEY,
    idTypes int,
    idTaille int,
    idEmp int,
    nb int,
    nbHeures int,
    Foreign Key (idTypes) REFERENCES Types(id),
    Foreign Key (idTaille) REFERENCES taille(id),
    Foreign Key (idEmp) REFERENCES employer(id)
);
-- 
CREATE TABLE embauche(
id serial PRIMARY KEY,
nom VARCHAR(25),
Prenom VARCHAR(25),
dtn date,
tauxH double precision,
dateEmbauche date   
);

CREATE TABLE expertise(
    id serial PRIMARY key,
    nom VARCHAR(25),
    annee int,
    coeff int
);
INSERT into expertise(nom,annee,coeff) VALUES('ouvrier',0,1);
INSERT into expertise(nom,annee,coeff) VALUES('senior',2,2);
INSERT into expertise(nom,annee,coeff) VALUES('expert',5,3);

CREATE or replace view v_getExpertiseEmployer as 
select*,Extract(year from age(now(),dateEmbauche)) as expe 
 from embauche;
-- ///////
CREATE table genre(
    id serial PRIMARY key,
    type VARCHAR(25)
);
 create table client(
    id serial primary key,
    Nom varchar(25),
    genre int ,
    Foreign Key (genre) REFERENCES genre(id)
 );
create TABLE vente(
    id serial primary key,
    idTypes int ,
    idClient int ,
    quantite int,
    dateAchat date,
    Foreign Key (idTypes) REFERENCES Types(id),
    Foreign Key (idClient) REFERENCES client(id)
); 
create table stockproduitfini(
    id serial primary key,
    idTypes int ,
    quantite int ,
    dates date,
     Foreign Key (idTypes) REFERENCES Types(id)
);
create
-- SELECT * FROM stockProduitfini;
-- select * from mouvement_stock;
-------------------------------------------------------------------------------------------------------------view
CREATE or replace view spf AS
SELECT 
sp.idtypes, sum(sp.quantite) as qte
 FROM  stockproduitfini as sp GROUP BY sp.idtypes;
--  SELECT * from spf;
CREATE or replace view v_produitfiniStock as 
SELECT  p.idtypes , t.nom ,p.qte 
FROM spf as p
JOIN  Types t on p.idtypes = t.id;
-- SELECT * FROM  v_produitfiniStock;
create OR REPLACE VIEW getmplook AS
SELECT  
ml.id,
l.id as look_id,
l.nom as nom_look,
m.id as mp_id,
m.nom as nom_mp,
m.pu as pu_mp
FROM
matierepremiereslook ml 
JOIN
look l   ON ml.idl =  l.id
JOIN 
mp m ON ml.idm = m.id;
-- SELECT * FROM getmplook;
create or replace view  v_statVente as 
select v.id , v.idTypes , t.nom as nom_types , v.idClient ,c.nom, c.genre , g.type 
from vente v
JOIN Types t ON v.idTypes  =t.id
JOIN  client c  ON v.idClient  = c.id
JOIN genre g on c.genre  =g.id ;
-- select * from v_statVente;
 -- compte homme et filles % types!!


--  2 ans de travail  senior  2Xth ouvrier  ,   3 ans de travail expert 3Xth ouvrier 
-- INSERT INTO expertise(nom,annes) values('ouvrier',1);
-- INSERT INTO expertise(nom,annes) values('senior',2);
-- INSERT INTO expertise(nom,annes) values('expert',);



-- drop TABLE pv;
-- select * from histo;
-- CREATE OR REPLACE VIEW v_combined_prix AS
-- SELECT
--     revient.id_f,
--     revient.idtypes,
--     revient.nom,
--     revient.idtaille,
--     revient.nom_taille,
--     revient.idemp,
--     revient.types,
--     COALESCE(CAST(revient.revient AS INTEGER), 0) AS revient,
--     COALESCE(CAST(getPrixVenteFini.id_pv AS INTEGER), 0) AS id_pv,
--     COALESCE(CAST(getPrixVenteFini.pv AS INTEGER), 0) AS pv
-- FROM
--     revient
-- LEFT JOIN
--     getPrixVenteFini ON revient.idtypes = getPrixVenteFini.idtypes
--                       AND revient.idtaille = getPrixVenteFini.idtaille;
CREATE OR REPLACE view v_benefice as 
SELECT 
    -- id_f,
    idtypes,
    nom,
    idtaille,
    nom_taille,
    (pv-previent) as benefice
FROM v_combined_prix;
CREATE OR REPLACE VIEW v_combined_prix AS
SELECT
    -- revient.id_f,
    revient.idtypes,
    revient.nom,
    revient.idtaille,
    revient.nom_taille,
    revient.previent,
    getPrixVenteFini.id_pv,
    getPrixVenteFini.pv
FROM
    revient
JOIN
    getPrixVenteFini ON revient.idtypes = getPrixVenteFini.idtypes
                      AND revient.idtaille = getPrixVenteFini.idtaille;

CREATE or REPLACE view revient as 
SELECT
idtypes,nom,idtaille,nom_taille,(somme_pr1*prixtotal) as previent
from v_combinaison;
CREATE OR REPLACE VIEW v_combinaison AS
SELECT
    v_pr2.idtypes,
    v_pr2.nom,
    v_pr2.idtaille,
    v_pr2.nom_taille,
    v_pr2.somme_pr1,
    getprixT.prixtotal
FROM
    v_pr2
JOIN
    getprixT ON v_pr2.idtypes = getprixT.idtypes;
-- DROP VIEW IF EXISTS v_benefice CASCADE;

CREATE  or replace view v_pr2 as
SELECT
    idtypes,
    nom,
    idtaille,
    nom_taille,
    SUM(pr1) AS somme_pr1
FROM
    v_pr1
GROUP BY
    idtypes, nom, idtaille, nom_taille;
CREATE  or replace view v_pr1 as
SELECT  
id_f,idtypes,nom,idtaille,nom_taille,idemp,types,SUM(salaire * nb * nbheures) as pr1
from getfabrication
GROUP BY
    id_f,idtypes, nom, idtaille, nom_taille, idemp, types;

CREATE or REPLACE VIEW getfabrication as 
SELECT f.id as id_f , f.idtypes as idTypes, t.nom, ta.id as idTaille,ta.nom as nom_taille,f.idEmp as idEmp , e.types,e.salaire ,f.nb,f.nbHeures
from fabrication f 
JOIN Types t on f.idtypes =  t.id
JOIN taille ta ON f.idTaille = ta.id
JOIN employer e ON  f.idEmp = e.id ;  

CREATE or REPLACE VIEW getPrixVenteFini as 
SELECT pv.id as id_pv , pv.idtypes as idTypes ,ta.id as idTaille,ta.nom as nom_taille, t.nom ,pv.pv
from pv 
JOIN Types t on pv.idtypes =  t.id
JOIN taille ta ON pv.idTaille = ta.id ;   

CREATE  or replace VIEW getPoketraWithDetails AS
SELECT p.id AS poketra_id,t.id as idTypes ,t.nom AS type_nom, l.nom AS look_nom, tl.nom AS taille_nom, d.idM,  m.nom AS matiere_premiere_nom, m.pu as pu_mp , d.qte
FROM poketra p
JOIN Types t ON p.idTypes = t.id
JOIN look l ON p.idLook = l.id
JOIN taille tl ON p.idTaille = tl.id
JOIN detailP d ON p.id = d.idPoketra
JOIN mp m ON d.idM = m.id;

--viez stock
CREATE  or replace VIEW getPoketraWithDetailsStock AS
SELECT p.id AS poketra_id,t.id as idTypes ,t.nom AS type_nom, l.nom AS look_nom, tl.nom AS taille_nom, d.idM,  m.nom AS matiere_premiere_nom, m.pu as pu_mp , d.qte,
case when s.isa is null then 0 else s.isa end as isa,
case when s.prix is null then 0 else s.prix end as prix
FROM poketra p
JOIN Types t ON p.idTypes = t.id
JOIN look l ON p.idLook = l.id
JOIN taille tl ON p.idTaille = tl.id
JOIN detailP d ON p.id = d.idPoketra
JOIN mp m ON d.idM = m.id
LEFT JOIN stock_mp s on s.idm = m.id;
select * from getPoketraWithDetailsStock ;
select * from mouvement_stock;
select * from histo;
-- view poketra
CREATE or replace VIEW   getPoketra AS
SELECT p.id AS poketra_id, t.nom AS type_nom, l.nom AS look_nom, tl.nom AS taille_nom
FROM poketra p
JOIN Types t ON p.idTypes = t.id
JOIN look l ON p.idLook = l.id
JOIN taille tl ON p.idTaille = tl.id;
-- 
create OR replace VIEW getmultiplication AS 
SELECT p.poketra_id,p.idTypes ,p. type_nom, p. look_nom, p.taille_nom, p.idM,p.matiere_premiere_nom, p.pu_mp * p.qte as puQuantite 
FROM getPoketraWithDetails p;
SELECT * FROM getmultiplication;
-- 
CREATE OR replace VIEW getprixT as 
SELECT gm.idtypes, gm.type_nom ,gm.taille_nom ,sum(gm.puquantite) as prixTotal
FROM
getmultiplication gm  GROUP BY gm.idtypes,gm.type_nom,gm.taille_nom ;
