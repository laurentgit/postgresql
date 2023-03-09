Create table COLLABORATEURS (
	Code_col Varchar(10) NOT NULL,
	Code_ser Varchar(10) NOT NULL,
	filtreclient Varchar(30) NOT NULL,
	Nom Varchar(30) NOT NULL,
	Prenom Varchar(30) NOT NULL,
	Tel Varchar(15),
	Fax Varchar(15),
	Email Varchar(30) NOT NULL,
	Fonction Varchar(30) NOT NULL,
	Password Varchar(32),
	Profile Varchar(3) NOT NULL,
	Langue Varchar(3) NOT NULL,
	CreationDate Timestamp NOT NULL,
	UpdateDate Timestamp NOT NULL,
	UpdateBy Varchar(30) NOT NULL,
 Primary Key (Code_col,Code_ser,filtreclient));

Create table NOTES_FRAIS (
	Code_not Varchar(10) NOT NULL,
	Code_col Varchar(10) NOT NULL,
	Code_ser Varchar(10) NOT NULL,
	Code_typ Varchar(10) NOT NULL,
	filtreclient Varchar(30) NOT NULL,
	Intitule Varchar(30) NOT NULL,
	Date Date NOT NULL,
	Montant Decimal(8,2) NOT NULL,
	Nombre Decimal(5,2) NOT NULL,
	Statut Varchar(30) NOT NULL,
	Montant_Avance Decimal(8,2),
	Date_Avance Date,
	Montant_Remboursement Decimal(8,2),
	Date_Remboursement Date,
	Mode_Remboursement Varchar(30),
	CreationDate Timestamp NOT NULL,
	UpdateDate Timestamp NOT NULL,
	UpdateBy Varchar(30) NOT NULL,
 Primary Key (Code_not,Code_col,Code_ser,Code_typ,filtreclient));

Create table SERVICES (
	Code_ser Varchar(10) NOT NULL,
	filtreclient Varchar(30) NOT NULL,
	Intitule Varchar(30) NOT NULL,
	Adresse1 Varchar(30) NOT NULL,
	Adresse2 Varchar(30),
	CP Varchar(5) NOT NULL,
	Commune Varchar(30) NOT NULL,
	Pays Varchar(30) NOT NULL,
	Nom_Responsable Varchar(30) NOT NULL,
	Prenom_Responsable Varchar(30) NOT NULL,
	CreationDate Timestamp NOT NULL,
	UpdateDate Timestamp NOT NULL,
	UpdateBy Varchar(30) NOT NULL,
 Primary Key (Code_ser,filtreclient));

Create table TYPES_FRAIS (
	Code_typ Varchar(10) NOT NULL,
	filtreclient Varchar(30) NOT NULL,
	Intitule Varchar(30) NOT NULL,
	Montant_Max Decimal(8,2),
	Nombre_Max Decimal(5,2),
 Primary Key (Code_typ,filtreclient));

INSERT INTO COLLABORATEURS (Code_col,Code_ser,filtreclient,Nom,Prenom,Tel,Fax,Email,Fonction,Password,Profile,Langue,CreationDate,UpdateDate,UpdateBy) VALUES ('smartin','S000','neosysta','MARTIN','Sébastien','01 00 00 00 00','01 00 00 00 01','sebastien.martin@fauxmail.fr','Directeur','','ADM','ENG','2013-12-16 15:26:08','2014-01-05 14:39:25','smartin');
INSERT INTO COLLABORATEURS (Code_col,Code_ser,filtreclient,Nom,Prenom,Tel,Fax,Email,Fonction,Password,Profile,Langue,CreationDate,UpdateDate,UpdateBy) VALUES ('omuller','S001','neosysta','MULLER','Olivier','','','olivier.muller@fauxmail.fr','Développeur','','COL','FRA','2013-12-30 11:31:17','2014-01-02 19:08:40','smartin');

INSERT INTO NOTES_FRAIS (Code_not,Code_col,Code_ser,Code_typ,filtreclient,Intitule,Date,Montant,Nombre,Statut,Montant_Avance,Date_Avance,Montant_Remboursement,Date_Remboursement,Mode_Remboursement,CreationDate,UpdateDate,UpdateBy) VALUES ('N0001','smartin','S000','R002','neosysta','Repas client','2013-12-30',50.00,4.00,'TRT',50.00,'2013-12-22',150.00,'2013-12-31','CHQ','2013-12-30 17:18:17','2014-01-04 13:14:05','smartin');
INSERT INTO NOTES_FRAIS (Code_not,Code_col,Code_ser,Code_typ,filtreclient,Intitule,Date,Montant,Nombre,Statut,Montant_Avance,Date_Avance,Montant_Remboursement,Date_Remboursement,Mode_Remboursement,CreationDate,UpdateDate,UpdateBy) VALUES ('N0002','smartin','S000','F001','neosysta','Transport Paris','2013-12-31',50.00,1.00,'VAL',null,null,null,null,null,'2013-12-31 09:45:29','2014-01-04 13:09:55','smartin');

INSERT INTO SERVICES (Code_ser,filtreclient,Intitule,Adresse1,Adresse2,CP,Commune,Pays,Nom_Responsable,Prenom_Responsable,CreationDate,UpdateDate,UpdateBy) VALUES ('S000','neosysta','Direction','neosysta','','75000','PARIS','FRANCE','MARTIN','Sébastien','2013-12-16 15:23:04','2014-01-02 19:09:17','smartin');
INSERT INTO SERVICES (Code_ser,filtreclient,Intitule,Adresse1,Adresse2,CP,Commune,Pays,Nom_Responsable,Prenom_Responsable,CreationDate,UpdateDate,UpdateBy) VALUES ('S001','neosysta','Informatique','neosysta','','75000','PARIS','FRANCE','MARTIN','Sébastien','2013-12-19 22:21:42','2013-12-19 22:27:19','smartin');
INSERT INTO SERVICES (Code_ser,filtreclient,Intitule,Adresse1,Adresse2,CP,Commune,Pays,Nom_Responsable,Prenom_Responsable,CreationDate,UpdateDate,UpdateBy) VALUES ('S002','neosysta','Communication','neosysta','','75000','PARIS','FRANCE','MARTIN','Sébastien','2013-12-19 22:35:46','2014-01-02 16:15:54','smartin');
INSERT INTO SERVICES (Code_ser,filtreclient,Intitule,Adresse1,Adresse2,CP,Commune,Pays,Nom_Responsable,Prenom_Responsable,CreationDate,UpdateDate,UpdateBy) VALUES ('S003','neosysta','Comptabilité','neosysta','','75000','PARIS','FRANCE','MARTIN','Sébastien','2013-12-30 12:51:15','2013-12-30 12:51:15','smartin');

INSERT INTO TYPES_FRAIS (Code_typ,filtreclient,Intitule,Montant_Max,Nombre_Max) VALUES ('C001','neosysta','Communication téléphone',null,null);
INSERT INTO TYPES_FRAIS (Code_typ,filtreclient,Intitule,Montant_Max,Nombre_Max) VALUES ('C002','neosysta','Communication internet',null,null);
INSERT INTO TYPES_FRAIS (Code_typ,filtreclient,Intitule,Montant_Max,Nombre_Max) VALUES ('F001','neosysta','Forfait transport',null,null);
INSERT INTO TYPES_FRAIS (Code_typ,filtreclient,Intitule,Montant_Max,Nombre_Max) VALUES ('F002','neosysta','Forfait repas',null,null);
INSERT INTO TYPES_FRAIS (Code_typ,filtreclient,Intitule,Montant_Max,Nombre_Max) VALUES ('F003','neosysta','Forfait hébergement',null,null);
INSERT INTO TYPES_FRAIS (Code_typ,filtreclient,Intitule,Montant_Max,Nombre_Max) VALUES ('F004','neosysta','Forfait communication',null,null);
INSERT INTO TYPES_FRAIS (Code_typ,filtreclient,Intitule,Montant_Max,Nombre_Max) VALUES ('H001','neosysta','Hôtel',null,null);
INSERT INTO TYPES_FRAIS (Code_typ,filtreclient,Intitule,Montant_Max,Nombre_Max) VALUES ('H002','neosysta','Location de résidence',null,null);
INSERT INTO TYPES_FRAIS (Code_typ,filtreclient,Intitule,Montant_Max,Nombre_Max) VALUES ('H003','neosysta','Co-location',null,null);
INSERT INTO TYPES_FRAIS (Code_typ,filtreclient,Intitule,Montant_Max,Nombre_Max) VALUES ('M001','neosysta','Fourniture de bureau',null,null);
INSERT INTO TYPES_FRAIS (Code_typ,filtreclient,Intitule,Montant_Max,Nombre_Max) VALUES ('M002','neosysta','Matériel informatique',null,null);
INSERT INTO TYPES_FRAIS (Code_typ,filtreclient,Intitule,Montant_Max,Nombre_Max) VALUES ('R001','neosysta','Petit-déjeuner',null,null);
INSERT INTO TYPES_FRAIS (Code_typ,filtreclient,Intitule,Montant_Max,Nombre_Max) VALUES ('R002','neosysta','Repas de midi',50.00,4.00);
INSERT INTO TYPES_FRAIS (Code_typ,filtreclient,Intitule,Montant_Max,Nombre_Max) VALUES ('R003','neosysta','Repas du soir',null,null);
INSERT INTO TYPES_FRAIS (Code_typ,filtreclient,Intitule,Montant_Max,Nombre_Max) VALUES ('R004','neosysta','Buffet / Collation',null,null);
INSERT INTO TYPES_FRAIS (Code_typ,filtreclient,Intitule,Montant_Max,Nombre_Max) VALUES ('T001','neosysta','Bus / Métro',null,null);
INSERT INTO TYPES_FRAIS (Code_typ,filtreclient,Intitule,Montant_Max,Nombre_Max) VALUES ('T002','neosysta','Taxi',null,null);
INSERT INTO TYPES_FRAIS (Code_typ,filtreclient,Intitule,Montant_Max,Nombre_Max) VALUES ('T003','neosysta','Location de véhicule',null,null);
INSERT INTO TYPES_FRAIS (Code_typ,filtreclient,Intitule,Montant_Max,Nombre_Max) VALUES ('T004','neosysta','Train',null,null);
INSERT INTO TYPES_FRAIS (Code_typ,filtreclient,Intitule,Montant_Max,Nombre_Max) VALUES ('T005','neosysta','Avion',null,null);
INSERT INTO TYPES_FRAIS (Code_typ,filtreclient,Intitule,Montant_Max,Nombre_Max) VALUES ('T006','neosysta','Carburant',null,null);
INSERT INTO TYPES_FRAIS (Code_typ,filtreclient,Intitule,Montant_Max,Nombre_Max) VALUES ('T007','neosysta','Co-voiturage',null,null);

