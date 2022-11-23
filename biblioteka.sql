CREATE TABLE IF NOT EXISTS knyga(
    id int(6) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT,
    pavadinimas varchar(70) NOT NULL,
    aprasymas varchar(500) DEFAULT NULL,
    puslapiu_skaicius int(3) UNSIGNED NOT NULL,
    kaina decimal(4,2) UNSIGNED NOT NULL,
    autorius varchar(40) DEFAULT NULL,
    leidejas varchar(40) NOT NULL,
    ivertinimas decimal(3,1) UNSIGNED NOT NULL,
    PRIMARY KEY(id)
)ENGINE=INNODB;

CREATE TABLE IF NOT EXISTS vartotojas(
    id int(6) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT,
    vardas varchar(50) DEFAULT NULL,
    pavarde varchar(50) DEFAULT NULL,
    slaptazodis varchar(30) DEFAULT NULL,
    vartotojo_vardas varchar(30) DEFAULT NULL,
    PRIMARY KEY(id)
)ENGINE=INNODB;

CREATE TABLE IF NOT EXISTS biblioteka(
    id int(6) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT,
    adresas varchar(50) DEFAULT NULL,
    PRIMARY KEY(id)
)ENGINE=INNODB;

INSERT INTO knyga(id, pavadinimas, aprasymas, puslapiu_skaicius, kaina, autorius, leidejas, ivertinimas)
VALUES
(1, "Data Smart", "data_science", 309, 15.20, "John Foreman", "Wiley", 2.06),
(2, "God created The Integers", "mathematics", 426, 22.99, "Stephen Hawking", "Penguin", 1.92);