##Developer Sin Dragan#7678
INSERT INTO `addon_account` (name, label, shared) VALUES
	('society_police', 'Police', 1)
;

INSERT INTO `datastore` (name, label, shared) VALUES
	('society_police', 'Police', 1)
;

INSERT INTO `addon_inventory` (name, label, shared) VALUES
	('society_police', 'Police', 1)
;

INSERT INTO `jobs` (name, label) VALUES
	('police','LSPD')
;

INSERT INTO `job_grades` (job_name, grade, name, label, salary, skin_male, skin_female) VALUES
	('police', 0, 'recruit', 'Saobracajna', 20, '{}', '{}'),
	('police', 1, 'officer', 'Interventna', 40, '{}', '{}'),
	('police', 2, 'sergeant', 'Inspektor', 60, '{}', '{}'),
	('police', 3, 'lieutenant', 'Komandir Interventne', 85, '{}', '{}'),
	('police', 4, 'lieutenant', 'Narednik', 105, '{}', '{}'),
	('police', 5, 'boss', 'Nacelnik', 130, '{}', '{}')
;



CREATE TABLE `fine_types` (
	`id` int(11) NOT NULL AUTO_INCREMENT,
	`label` varchar(255) DEFAULT NULL,
	`amount` int(11) DEFAULT NULL,
	`category` int(11) DEFAULT NULL,

	PRIMARY KEY (`id`)
);

INSERT INTO 'licences' (type, label) VALUES
('weapon_malee', 'Dozvola za Oruzije'),
('pretres', 'Nalog za Pretres'),
('racija', 'Nalog za Raciju'),
('znacka', 'Znacka');

INSERT INTO `fine_types` (label, amount, category) VALUES
	('Zloupotreba Trube', 30, 0),
	('Prelaze čvrstu liniju', 40, 0),
	('Obrnuti saobraćaj', 250, 0),
	('Okretanje nije dozvoljeno', 250, 0),
	('Terenski saobraćaj', 170, 0),
	('Ne poštovanje sigurnosnih rastojanja', 30, 0),
	('Opasno / zabranjeno stajanje', 150, 0),
	('Neudoban / zabranjen parking', 70, 0),
	('Ne poštovanje prioriteta na desnoj strani', 70, 0),
	('Nepoštivanje vozila s prioritetom', 90, 0),
	('Ne poštovanje zaustavljanja', 105, 0),
	('Ne poštovanje crvenog svetla', 130, 0),
	('Opasan prolazak', 100, 0),
	('Vozilo nije u dobrom stanju', 100, 0),
	('Vožnja bez dozvole', 1500, 0),
	('Hit and run', 800, 0),
	('Prebrzanje <5 km / h', 90, 0),
	('Prebrzanje 5-15 km / h', 120, 0),
	('Prebrza 15-30 km / h', 180, 0),
	('Prebrzanje> 30 km / h', 300, 0),
	('Prepreka u saobraćaju', 110, 1),
	('Degradacija javnog puta', 90, 1),
	('Javni nered', 90, 1),
	('Opstrukcija policijskog delovanja', 130, 1),
	('Uvreda za / između civila', 75, 1),
	('Prezir policajca', 110, 1),
	('Verbalna pretnja ili zastrašivanje civilima', 90, 1),
	('Verbalna pretnja ili zastrašivanje prema policajcu', 150, 1),
	('Nelegalna demonstracija', 250, 1),
	('Pokušaj korupcije', 1500, 1),
	('Belo oružje u gradu', 120, 2),
	('Smrtonosno oružje u gradu', 300, 2),
	('Neovlašćeno nošenje oružja (nedostatak dozvole)', 600, 2),
	('Nelegalno nošenje pištolja', 700, 2),
	('Uhvaćen u bravi zastave', 300, 2),
	('Krađa automobila', 1800, 2),
	('Prodaja lekova', 1500, 2),
	('Proizvodnja lekova', 1500, 2),
	('Posjedovanje droge', 650, 2),
	('Civilno uzimanje talaca', 1500, 2),
	('Državni agent uzima taoce', 2000, 2),
	('Privatna pljačka', 650, 2),
	('Pljačka trgovine', 650, 2),
	('Pljačka banke', 1500, 2),
	('Tir sur civil', 2000, 3),
	('Državni agent pucanje', 2500, 3),
	('Pokušaj ubistva civila', 3000, 3),
	('Pokušaj ubistva državnog agenta', 5000, 3),
	('Ubistvo nad civilima', 10000, 3),
	('Ubistvo državnog agenta', 30, 3),
	('Nenamjerno ubistvo', 1800, 3),
	('Poslovna prevara', 2000, 2)
;
