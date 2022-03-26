--------------------------------------------------------------------------------------------------------------------------------
-- Members (Standardizing data)-------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------
-- I. Normalize and fix data
-- (1) birthday format mm/dd/yyyy
update bnpid_old.CandidateInformationShared SET dateofbirth = '09/28/1955' where id = 5207;
update bnpid_old.CandidateInformationShared SET dateofbirth = '07/23/1944' where id = 5209;
update bnpid_old.CandidateInformationShared SET dateofbirth = '04/25/1944' where id = 5219;
update bnpid_old.CandidateInformationShared SET dateofbirth = '02/23/1978' where id = 5225;
update bnpid_old.CandidateInformationShared SET dateofbirth = '06/15/1942' where id = 5229;
update bnpid_old.CandidateInformationShared SET dateofbirth = '09/23/1956' where id = 5271;
update bnpid_old.CandidateInformationShared SET dateofbirth = '12/13/1958' where id = 5297;
update bnpid_old.CandidateInformationShared SET dateofbirth = '01/01/1970' where dateofbirth = '' and id > 0;

-- (2) Marital Status
update bnpid_old.CandidateInformationShared set maritalstatus = 'NA' where maritalstatus is null AND id > 0;
update bnpid_old.CandidateInformationShared set maritalstatus = 'NA' where maritalstatus = 'F' AND id > 0;
update bnpid_old.CandidateInformationShared set maritalstatus = 'MARRIED' where maritalstatus = 'M' AND id > 0;
update bnpid_old.CandidateInformationShared set maritalstatus = 'MARRIED' where maritalstatus = 'SINGLE BUT MARRIED' AND id > 0;
update bnpid_old.CandidateInformationShared set maritalstatus = 'MARRIED' where maritalstatus = 'Marrie' AND id > 0;
update bnpid_old.CandidateInformationShared set maritalstatus = 'MARRIED' where maritalstatus = 'Maried' AND id > 0;
update bnpid_old.CandidateInformationShared set maritalstatus = 'MARRIED' where maritalstatus = 'Married' AND id > 0;
update bnpid_old.CandidateInformationShared set maritalstatus = 'SINGLE' where maritalstatus = 'S' AND id > 0;
update bnpid_old.CandidateInformationShared set maritalstatus = 'SINGLE' where maritalstatus = 'SIGNLE' AND id > 0;
update bnpid_old.CandidateInformationShared set maritalstatus = 'SINGLE' where maritalstatus = 'SOMG;E' AND id > 0;
update bnpid_old.CandidateInformationShared set maritalstatus = 'SINGLE' where maritalstatus = '22-S' AND id > 0;
update bnpid_old.CandidateInformationShared set maritalstatus = 'SINGLE' where maritalstatus = '15-S' AND id > 0;
update bnpid_old.CandidateInformationShared set maritalstatus = 'SINGLE' where maritalstatus = '20-S' AND id > 0;
update bnpid_old.CandidateInformationShared set maritalstatus = 'SINGLE' where maritalstatus = '19-S' AND id > 0;
update bnpid_old.CandidateInformationShared set maritalstatus = 'SINGLE' where maritalstatus = '17-S' AND id > 0;
update bnpid_old.CandidateInformationShared set maritalstatus = 'SINGLE' where maritalstatus = '14-S' AND id > 0;
update bnpid_old.CandidateInformationShared set maritalstatus = 'SINGLE' where maritalstatus = '21-S' AND id > 0;
update bnpid_old.CandidateInformationShared set maritalstatus = 'WIDOWED' where maritalstatus = 'W' AND id > 0;
update bnpid_old.CandidateInformationShared set maritalstatus = 'WIDOWED' where maritalstatus = 'Widower' AND id > 0;
update bnpid_old.CandidateInformationShared set maritalstatus = 'WIDOWED' where maritalstatus = 'WIDOW' AND id > 0;
update bnpid_old.CandidateInformationShared set maritalstatus = 'DIVORCED' where maritalstatus = 'D' AND id > 0;
update bnpid_old.CandidateInformationShared set maritalstatus = 'DIVORCED' where maritalstatus = 'DIVORCE' AND id > 0;
update bnpid_old.CandidateInformationShared set maritalstatus = 'SEPARATED' where maritalstatus = 'MS' AND id > 0;

update bnpid_old.CandidateInformationShared set maritalstatus = 'NA' where id = 1494;
update bnpid_old.CandidateInformationShared set email = 'FELINATR@YAHOO.COM' where id = 1494;
update bnpid_old.CandidateInformationShared set maritalstatus = 'NA' where id = 2054;
update bnpid_old.CandidateInformationShared set email = 'SWIMRIDERUNDAVE@AOL.COM' where id = 2054;
update bnpid_old.CandidateInformationShared set maritalstatus = 'NA' where id = 2390;
update bnpid_old.CandidateInformationShared set email = 'NORAOJOJO@ICLOUD.COM' where id = 2390;
update bnpid_old.CandidateInformationShared set maritalstatus = 'NA' where id = 2682;
update bnpid_old.CandidateInformationShared set email = 'MELANIEAGUDA@HOTMAIL.COM' where id = 2682;
update bnpid_old.CandidateInformationShared set maritalstatus = 'NA' where id = 6067;
update bnpid_old.CandidateInformationShared set email = 'nlm9558@yahoo.com' where id = 6067;
update bnpid_old.CandidateInformationShared set maritalstatus = 'NA' where id = 6401; -- KRISTAL BAPTISTA
update bnpid_old.CandidateInformationShared set email = 'ANTETOTS@COMCAST.NET' where id = 8397;
update bnpid_old.CandidateInformationShared set maritalstatus = 'NA' where id = 8397;

-- (3) Religion
update bnpid_old.CandidateInformationShared set religion = 'ROMAN CATHOLIC' where religion = 'CATHOLIC' and id > 0;
update bnpid_old.CandidateInformationShared set religion = 'ROMAN CATHOLIC' where religion = 'ROMAN CAHOLIC' and id > 0;
update bnpid_old.CandidateInformationShared set religion = 'ROMAN CATHOLIC' where religion = 'ROMAN CATHOLI' and id > 0;
update bnpid_old.CandidateInformationShared set religion = 'ROMAN CATHOLIC' where religion = 'Roman Cathloic' and id > 0;
update bnpid_old.CandidateInformationShared set religion = 'ROMAN CATHOLIC' where religion = 'Catheolic' and id > 0;
update bnpid_old.CandidateInformationShared set religion = 'ROMAN CATHOLIC' where religion = 'Cataholic' and id > 0;
update bnpid_old.CandidateInformationShared set religion = 'ROMAN CATHOLIC' where religion = ' ROMAN CATHOLIC' and id > 0;
update bnpid_old.CandidateInformationShared set religion = 'ROMAN CATHOLIC' where religion = '+' and id > 0;
update bnpid_old.CandidateInformationShared set religion = 'CHRISTIAN' where religion = 'Christian' and id > 0;
update bnpid_old.CandidateInformationShared set religion = 'PROTESTANT' where religion = 'Protestant' and id > 0;
update bnpid_old.CandidateInformationShared set religion = 'BAPTIST' where religion = 'Baptist' and id > 0;

-- (4) parish and address
update bnpid_old.CandidateInformationShared set parishaddress = '18405 Superior Street' where parishchurch = 'OUR LADY OF LOURDES' and id > 0;
update bnpid_old.CandidateInformationShared set citystatezip = 'Northridge, CA 91325' where parishchurch = 'OUR LADY OF LOURDES' and id > 0;
update bnpid_old.CandidateInformationShared set parishchurch = 'Our Lady of Lourdes' where parishchurch = 'OUR LADY OF LOURDES' and id > 0;

update bnpid_old.CandidateInformationShared set parishaddress = '132 N Euclid Ave' where parishchurch = 'ALL SAINTS EPISCOPAL' and id > 0;
update bnpid_old.CandidateInformationShared set citystatezip = 'Pasadena, CA 91101' where parishchurch = 'ALL SAINTS EPISCOPAL' and id > 0;
update bnpid_old.CandidateInformationShared set parishchurch = 'All Saints Episcopal Church' where parishchurch = 'ALL SAINTS EPISCOPAL' and id > 0;

update bnpid_old.CandidateInformationShared set parishaddress = '1100 Glendale Blvd' where parishchurch = 'ANGELIC TEMPLE' and id > 0;
update bnpid_old.CandidateInformationShared set citystatezip = 'Los Angeles, CA 90026' where parishchurch = 'ANGELIC TEMPLE' and id > 0;
update bnpid_old.CandidateInformationShared set parishchurch = 'Angelus Temple' where parishchurch = 'ANGELIC TEMPLE' and id > 0;

update bnpid_old.CandidateInformationShared set parishaddress = '22324 Golden Springs Dr' where parishchurch = 'Calvary Chapel Golden Springs' and id > 0;
update bnpid_old.CandidateInformationShared set citystatezip = 'Diamond Bar, CA 91765' where parishchurch = 'Calvary Chapel Golden Springs' and id > 0;

update bnpid_old.CandidateInformationShared set parishaddress = '1001 New Beginnings Dr' where parishchurch = 'Central Christian' and id > 0;
update bnpid_old.CandidateInformationShared set citystatezip = 'Henderson, NV 89011' where parishchurch = 'Central Christian' and id > 0;
update bnpid_old.CandidateInformationShared set parishchurch = 'Central Christian Church' where parishchurch = 'Central Christian' and id > 0;

update bnpid_old.CandidateInformationShared set parishaddress = '624 N Rossmore Ave' where parishchurch = 'Christ the King' and id > 0;
update bnpid_old.CandidateInformationShared set citystatezip = 'Los Angeles, CA 90004' where parishchurch = 'Christ the King' and id > 0;

update bnpid_old.CandidateInformationShared set parishaddress = '1500 N Ave 53' where parishchurch = 'CHURCH OF THE RESURRECTION' and id > 0;
update bnpid_old.CandidateInformationShared set citystatezip = 'Los Angeles, CA 90042' where parishchurch = 'CHURCH OF THE RESURRECTION' and id > 0;
update bnpid_old.CandidateInformationShared set parishchurch = 'Church of the Resurrection' where parishchurch = 'CHURCH OF THE RESURRECTION' and id > 0;

update bnpid_old.CandidateInformationShared set parishaddress = '2331 Kellogg Ave' where parishchurch = 'CROSSROADS CHRISTIAN' and id > 0;
update bnpid_old.CandidateInformationShared set citystatezip = 'Corona, CA 92881' where parishchurch = 'CROSSROADS CHRISTIAN' and id > 0;
update bnpid_old.CandidateInformationShared set parishchurch = 'Crossroads Christian Church' where parishchurch = 'CROSSROADS CHRISTIAN' and id > 0;

update bnpid_old.CandidateInformationShared set parishaddress = '1002 11th Ave' where parishchurch = 'DELANO FIRST UNITED METHODIST CHURCH' and id > 0;
update bnpid_old.CandidateInformationShared set citystatezip = 'Delano, CA 93215' where parishchurch = 'DELANO FIRST UNITED METHODIST CHURCH' and id > 0;
update bnpid_old.CandidateInformationShared set parishchurch = 'First United Methodist Church' where parishchurch = 'DELANO FIRST UNITED METHODIST CHURCH' and id > 0;

update bnpid_old.CandidateInformationShared set parishaddress = '2231 Club Center Dr' where parishchurch = 'Divine Mercy' and id > 0;
update bnpid_old.CandidateInformationShared set citystatezip = 'Sacramento, CA 95835' where parishchurch = 'Divine Mercy' and id > 0;
update bnpid_old.CandidateInformationShared set parishchurch = 'Divine Mercy Catholic Church' where parishchurch = 'Divine Mercy' and id > 0;
update bnpid_old.CandidateInformationShared set parishaddress = '2231 Club Center Dr' where parishchurch = 'Divine Mercy Catholic Church' and id > 0;

update bnpid_old.CandidateInformationShared set parishaddress = '136 Hyatts Rd' where parishchurch = 'GOOD SHEPHERD PARISH' and id > 0;
update bnpid_old.CandidateInformationShared set citystatezip = 'Plumpton NSW 2761' where parishchurch = 'GOOD SHEPHERD PARISH' and id > 0;
update bnpid_old.CandidateInformationShared set parishchurch = 'The Good Shepherd Parish Plumpton' where parishchurch = 'GOOD SHEPHERD PARISH' and id > 0;

update bnpid_old.CandidateInformationShared set parishaddress = '302 Cathedral Way' where parishchurch = 'Guardian Angel' and id > 0;
update bnpid_old.CandidateInformationShared set citystatezip = 'Las Vegas, NV 89109' where parishchurch = 'Guardian Angel' and id > 0;
update bnpid_old.CandidateInformationShared set parishchurch = 'Guardian Angel Cathedral' where parishchurch = 'Guardian Angel' and id > 0;

update bnpid_old.CandidateInformationShared set parishaddress = '250 N. Turner Avenue' where parishchurch = 'GUASTI' and id > 0;
update bnpid_old.CandidateInformationShared set citystatezip = 'Ontario, CA 91761' where parishchurch = 'GUASTI' and id > 0;
update bnpid_old.CandidateInformationShared set parishchurch = 'San Secondo d\'Asti Catholic Church' where parishchurch = 'GUASTI' and id > 0;

update bnpid_old.CandidateInformationShared set parishaddress = '740 Shamrock Ave' where parishchurch = 'IMMACULATE CONCEPCION' and id > 0;
update bnpid_old.CandidateInformationShared set citystatezip = 'Monrovia, CA 91016' where parishchurch = 'IMMACULATE CONCEPCION' and id > 0;
update bnpid_old.CandidateInformationShared set parishchurch = 'Immaculate Conception Church' where parishchurch = 'IMMACULATE CONCEPCION' and id > 0;

update bnpid_old.CandidateInformationShared set parishaddress = '1905 Portage Trail' where parishchurch = 'Immaculate Heart of Mary' and id > 0;
update bnpid_old.CandidateInformationShared set citystatezip = 'Cuyahoga Falls, OH 44223' where parishchurch = 'Immaculate Heart of Mary' and id > 0;
update bnpid_old.CandidateInformationShared set parishchurch = 'Immaculate Heart of Mary Church' where parishchurch = 'Immaculate Heart of Mary' and id > 0;

update bnpid_old.CandidateInformationShared set parishaddress = '14941 Devonshire St' where parishchurch = 'Mission Hills' and id > 0;
update bnpid_old.CandidateInformationShared set citystatezip = 'Mission Hills, CA 91345' where parishchurch = 'Mission Hills' and id > 0;
update bnpid_old.CandidateInformationShared set parishchurch = 'Mission Hills Christian Church' where parishchurch = 'Mission Hills' and id > 0;

update bnpid_old.CandidateInformationShared set parishaddress = '2940 Forest Glade Dr' where parishchurch = 'Our Lady of Atonement' and id > 0;
update bnpid_old.CandidateInformationShared set citystatezip = 'Windsor, ON N8R 1L5, Canada' where parishchurch = 'Our Lady of Atonement' and id > 0;
update bnpid_old.CandidateInformationShared set parishchurch = 'Parish of the Atonement' where parishchurch = 'Our Lady of Atonement' and id > 0;

update bnpid_old.CandidateInformationShared set parishaddress = '1015 Clinton St' where parishchurch = 'Our Lady of Guadalupe' and id > 0;
update bnpid_old.CandidateInformationShared set citystatezip = 'Delano, CA 93215' where parishchurch = 'Our Lady of Guadalupe' and id > 0;
update bnpid_old.CandidateInformationShared set parishchurch = 'Our Lady of Guadalupe Church' where parishchurch = 'Our Lady of Guadalupe' and id > 0;

update bnpid_old.CandidateInformationShared set parishaddress = '15444 Nordhoff St' where parishchurch = 'Our Lady of Peace' and id > 0;
update bnpid_old.CandidateInformationShared set citystatezip = 'North Hills, CA 91343' where parishchurch = 'Our Lady of Peace' and id > 0;
update bnpid_old.CandidateInformationShared set parishchurch = 'Our Lady of Peace Catholic Church' where parishchurch = 'Our Lady of Peace' and id > 0;

update bnpid_old.CandidateInformationShared set parishaddress = '26 Swanston St' where parishchurch = 'Our Lady of the Rosary' and id > 0;
update bnpid_old.CandidateInformationShared set citystatezip = 'St Marys NSW 2760' where parishchurch = 'Our Lady of the Rosary' and id > 0;
update bnpid_old.CandidateInformationShared set parishchurch = 'Our Lady of the Rosary Church, St. Mary\'s' where parishchurch = 'Our Lady of the Rosary' and id > 0;

update bnpid_old.CandidateInformationShared set parishaddress = '4824 Jones Ave' where parishchurch = 'REYNA DELOS ANGELES' and id > 0;
update bnpid_old.CandidateInformationShared set citystatezip = 'Riverside, CA 92505' where parishchurch = 'REYNA DELOS ANGELES' and id > 0;
update bnpid_old.CandidateInformationShared set parishchurch = 'Queen of Angels' where parishchurch = 'REYNA DELOS ANGELES' and id > 0;

update bnpid_old.CandidateInformationShared set parishaddress = '14622 Foothill Blvd' where parishchurch = 'ROCK OF SALVATION CHURCH' and id > 0;
update bnpid_old.CandidateInformationShared set citystatezip = 'Fontana, CA 92335' where parishchurch = 'ROCK OF SALVATION CHURCH' and id > 0;
update bnpid_old.CandidateInformationShared set parishchurch = 'Rock Christian Church' where parishchurch = 'ROCK OF SALVATION CHURCH' and id > 0;

update bnpid_old.CandidateInformationShared set parishaddress = '2575 W El Campo Grande Ave' where parishchurch = 'Saint John Newman' and id > 0;
update bnpid_old.CandidateInformationShared set citystatezip = 'North Las Vegas, NV 89031' where parishchurch = 'Saint John Newman' and id > 0;
update bnpid_old.CandidateInformationShared set parishchurch = 'St John Neumann Roman Catholic Church' where parishchurch = 'Saint John Newman' and id > 0;

update bnpid_old.CandidateInformationShared set parishaddress = '747 Meadow Pass Rd' where parishchurch IN ('SAINT LORENZO RUIZ', 'SAN LORENZO LUIS') and id > 0;
update bnpid_old.CandidateInformationShared set citystatezip = 'Walnut, CA 91789' where parishchurch IN ('SAINT LORENZO RUIZ', 'SAN LORENZO LUIS') and id > 0;
update bnpid_old.CandidateInformationShared set parishchurch = 'St. Lorenzo Ruiz Catholic Parish Community' where parishchurch IN ('SAINT LORENZO RUIZ', 'SAN LORENZO LUIS') and id > 0;

update bnpid_old.CandidateInformationShared set parishaddress = '9800 San Juan St' where parishchurch = 'SANTA SOPHIA' and id > 0;
update bnpid_old.CandidateInformationShared set citystatezip = 'Spring Valley, CA 91977' where parishchurch = 'SANTA SOPHIA' and id > 0;
update bnpid_old.CandidateInformationShared set parishchurch = 'Santa Sophia Catholic Church' where parishchurch = 'SANTA SOPHIA' and id > 0;

update bnpid_old.CandidateInformationShared set parishaddress = '5390 Linden Ave' where parishchurch IN ('ST ATHANASIUS', 'St. Athanasius') and id > 0;
update bnpid_old.CandidateInformationShared set citystatezip = 'Long Beach, CA 90805' where parishchurch IN ('ST ATHANASIUS', 'St. Athanasius') and id > 0;
update bnpid_old.CandidateInformationShared set parishchurch = 'St. Athanasius Catholic Church' where parishchurch IN ('ST ATHANASIUS', 'St. Athanasius') and id > 0;

update bnpid_old.CandidateInformationShared set parishaddress = '990 Saturn Blvd' where parishchurch = 'St Charles Parish' and id > 0;
update bnpid_old.CandidateInformationShared set citystatezip = 'San Diego, CA 92154' where parishchurch = 'St Charles Parish' and id > 0;
update bnpid_old.CandidateInformationShared set parishchurch = 'St. Charles Catholic Church' where parishchurch = 'St Charles Parish' and id > 0;

update bnpid_old.CandidateInformationShared set parishaddress = '629 S Glendora Ave' where parishchurch = 'ST CHRISTOPHER' and id > 0;
update bnpid_old.CandidateInformationShared set citystatezip = 'West Covina, CA 91790' where parishchurch = 'ST CHRISTOPHER' and id > 0;
update bnpid_old.CandidateInformationShared set parishchurch = 'St. Christopher Catholic Church' where parishchurch = 'ST CHRISTOPHER' and id > 0;

update bnpid_old.CandidateInformationShared set parishaddress = '4714 Clark Ave' where parishchurch = 'St Cyprian Church' and id > 0;
update bnpid_old.CandidateInformationShared set citystatezip = 'Long Beach, CA 90808' where parishchurch = 'St Cyprian Church' and id > 0;
update bnpid_old.CandidateInformationShared set parishchurch = 'St. Cyprian Catholic Church' where parishchurch = 'St Cyprian Church' and id > 0;

update bnpid_old.CandidateInformationShared set parishaddress = '2151 S Diamond Bar Blvd' where parishchurch = 'St Denis Catholic Church' and id > 0;
update bnpid_old.CandidateInformationShared set citystatezip = 'Diamond Bar, CA 91765' where parishchurch = 'St Denis Catholic Church' and id > 0;
update bnpid_old.CandidateInformationShared set parishchurch = 'St. Denis Catholic Church' where parishchurch = 'St Denis Catholic Church' and id > 0;

update bnpid_old.CandidateInformationShared set parishaddress = '13400 Bellflower Blvd' where parishchurch = 'ST DOMINIC SAVIO' and id > 0;
update bnpid_old.CandidateInformationShared set citystatezip = 'Bellflower, CA 90706' where parishchurch = 'ST DOMINIC SAVIO' and id > 0;
update bnpid_old.CandidateInformationShared set parishchurch = 'St. Dominic Savio Church' where parishchurch = 'ST DOMINIC SAVIO' and id > 0;

update bnpid_old.CandidateInformationShared set parishaddress = '14655 Kittridge St' where parishchurch = 'ST ELIZABETH' and id > 0;
update bnpid_old.CandidateInformationShared set citystatezip = 'Van Nuys, CA 91405' where parishchurch = 'ST ELIZABETH' and id > 0;
update bnpid_old.CandidateInformationShared set parishchurch = 'St. Elisabeth Church' where parishchurch = 'ST ELIZABETH' and id > 0;

update bnpid_old.CandidateInformationShared set parishaddress = '2713 S Grove Ave' where parishchurch = 'ST ELIZABETH ANNE SETON' and id > 0;
update bnpid_old.CandidateInformationShared set citystatezip = 'Ontario, CA 91761' where parishchurch = 'ST ELIZABETH ANNE SETON' and id > 0;
update bnpid_old.CandidateInformationShared set parishchurch = 'St. Elizabeth Ann Seton Church' where parishchurch = 'ST ELIZABETH ANNE SETON' and id > 0;

update bnpid_old.CandidateInformationShared set parishaddress = '21900 S Main St' where parishchurch IN ('ST FELOMINA', 'ST PHELOMENA', 'St. Philomena') and id > 0;
update bnpid_old.CandidateInformationShared set citystatezip = 'Carson, CA 90745' where parishchurch IN ('ST FELOMINA', 'ST PHELOMENA', 'St. Philomena') and id > 0;
update bnpid_old.CandidateInformationShared set parishchurch = 'St. Philomena Church' where parishchurch IN ('ST FELOMINA', 'ST PHELOMENA', 'St. Philomena') and id > 0;

update bnpid_old.CandidateInformationShared set parishaddress = '14061 Roscoe Blvd' where parishchurch = 'ST GENEVIEVE' and id > 0;
update bnpid_old.CandidateInformationShared set citystatezip = 'Panorama City, CA 91402' where parishchurch = 'ST GENEVIEVE' and id > 0;
update bnpid_old.CandidateInformationShared set parishchurch = 'St. Genevieve Catholic Church' where parishchurch = 'ST GENEVIEVE' and id > 0;

update bnpid_old.CandidateInformationShared set parishaddress = '16555 Chatsworth Street' where parishchurch = 'ST JOHN BAPTIST DE LA SALLE' and id > 0;
update bnpid_old.CandidateInformationShared set citystatezip = 'Granada Hills, CA 91344' where parishchurch = 'ST JOHN BAPTIST DE LA SALLE' and id > 0;
update bnpid_old.CandidateInformationShared set parishchurch = 'St. John Baptist De La Salle' where parishchurch = 'ST JOHN BAPTIST DE LA SALLE' and id > 0;

update bnpid_old.CandidateInformationShared set parishaddress = '877 N Campus Ave' where parishchurch = 'ST JOSEPH - UPLAND' and id > 0;
update bnpid_old.CandidateInformationShared set citystatezip = 'Upland, CA 91786' where parishchurch = 'ST JOSEPH - UPLAND' and id > 0;
update bnpid_old.CandidateInformationShared set parishchurch = 'St. Joseph\'s Catholic Church' where parishchurch = 'ST JOSEPH - UPLAND' and id > 0;

update bnpid_old.CandidateInformationShared set parishaddress = '1032 Thomas Way' where parishchurch = 'ST MARY' and id > 0;
update bnpid_old.CandidateInformationShared set citystatezip = 'Delano, CA 93215' where parishchurch = 'ST MARY' and id > 0;
update bnpid_old.CandidateInformationShared set parishchurch = 'St. Mary\'s Church and School' where parishchurch = 'ST MARY' and id > 0;

update bnpid_old.CandidateInformationShared set parishaddress = '16550 Jurupa Ave' where parishchurch = 'ST MARY\'S' and id > 0;
update bnpid_old.CandidateInformationShared set citystatezip = 'Fontana, CA 92337' where parishchurch = 'ST MARY\'S' and id > 0;
update bnpid_old.CandidateInformationShared set parishchurch = 'St. Mary\'s Catholic Church' where parishchurch = 'ST MARY\'S' and id > 0;

update bnpid_old.CandidateInformationShared set parishaddress = '14085 Peyton Dr' where parishchurch IN ('ST PAUL', 'ST PAUL THE APOSTLE') and id > 0;
update bnpid_old.CandidateInformationShared set citystatezip = 'Chino Hills, CA 91709' where parishchurch IN ('ST PAUL', 'ST PAUL THE APOSTLE') and id > 0;
update bnpid_old.CandidateInformationShared set parishchurch = 'St. Paul the Apostle Catholic Church' where parishchurch IN ('ST PAUL', 'ST PAUL THE APOSTLE') and id > 0;

update bnpid_old.CandidateInformationShared set parishaddress = '8100 Chapman Ave' where parishchurch = 'ST POLYCARP' and id > 0;
update bnpid_old.CandidateInformationShared set citystatezip = 'Stanton, CA 90680' where parishchurch = 'ST POLYCARP' and id > 0;
update bnpid_old.CandidateInformationShared set parishchurch = 'St. Polycarp Catholic Church' where parishchurch = 'ST POLYCARP' and id > 0;

update bnpid_old.CandidateInformationShared set parishaddress = '130 N Pecos Rd' where parishchurch = 'ST THOMAS MOORE' and id > 0;
update bnpid_old.CandidateInformationShared set citystatezip = 'Henderson, NV 89074' where parishchurch = 'ST THOMAS MOORE' and id > 0;
update bnpid_old.CandidateInformationShared set parishchurch = 'St. Thomas More Catholic Community' where parishchurch = 'ST THOMAS MOORE' and id > 0;

update bnpid_old.CandidateInformationShared set parishaddress = '3108 Sierra Rd' where parishchurch = 'ST VICTOR\'S PARICH' and id > 0;
update bnpid_old.CandidateInformationShared set citystatezip = 'San Jose, CA 95132' where parishchurch = 'ST VICTOR\'S PARICH' and id > 0;
update bnpid_old.CandidateInformationShared set parishchurch = 'St. Victor Catholic Church' where parishchurch = 'ST VICTOR\'S PARICH' and id > 0;

update bnpid_old.CandidateInformationShared set parishaddress = '555 San Bruno Ave W' where parishchurch = 'SAN BRUNO CHURCH' and id > 0;
update bnpid_old.CandidateInformationShared set citystatezip = 'San Bruno, CA 94066' where parishchurch = 'SAN BRUNO CHURCH' and id > 0;
update bnpid_old.CandidateInformationShared set parishchurch = 'St. Bruno\'s Catholic Church' where parishchurch = 'SAN BRUNO CHURCH' and id > 0;

update bnpid_old.CandidateInformationShared set parishaddress = '999 E Kingsley Ave' where parishchurch = 'St. Madeleine' and id > 0;
update bnpid_old.CandidateInformationShared set citystatezip = 'Pomona, CA 91767' where parishchurch = 'St. Madeleine' and id > 0;
update bnpid_old.CandidateInformationShared set parishchurch = 'St. Madeleine Catholic Church' where parishchurch = 'St. Madeleine' and id > 0;

update bnpid_old.CandidateInformationShared set parishaddress = '7710 El Cajon Blvd' where parishchurch = 'St. Martin of Tours' and id > 0;
update bnpid_old.CandidateInformationShared set citystatezip = 'La Mesa, CA 91942' where parishchurch = 'St. Martin of Tours' and id > 0;
update bnpid_old.CandidateInformationShared set parishchurch = 'St. Martin of Tours Catholic Church' where parishchurch = 'St. Martin of Tours' and id > 0;

update bnpid_old.CandidateInformationShared set parishaddress = '2140 W Ontario Ave' where parishchurch = 'St. Matthews' and id > 0;
update bnpid_old.CandidateInformationShared set citystatezip = 'Corona, CA 92882' where parishchurch = 'St. Matthews' and id > 0;
update bnpid_old.CandidateInformationShared set parishchurch = 'St. Matthew Catholic Church' where parishchurch = 'St. Matthews' and id > 0;

update bnpid_old.CandidateInformationShared set parishaddress = '5124 Churchward St' where parishchurch = 'Sta/ Rita' and id > 0;
update bnpid_old.CandidateInformationShared set citystatezip = 'San Diego, CA 92114' where parishchurch = 'Sta/ Rita' and id > 0;
update bnpid_old.CandidateInformationShared set parishchurch = 'St. Rita Catholic Church' where parishchurch = 'Sta/ Rita' and id > 0;

update bnpid_old.CandidateInformationShared set parishaddress = '2500 W Ave 33' where parishchurch = 'St. Bernard' and id > 0;
update bnpid_old.CandidateInformationShared set citystatezip = 'Los Angeles, CA 90065' where parishchurch = 'St. Bernard' and id > 0;
update bnpid_old.CandidateInformationShared set parishchurch = 'St. Bernard Church' where parishchurch = 'St. Bernard' and id > 0;

update bnpid_old.CandidateInformationShared set parishaddress = null where id = 6209;
update bnpid_old.CandidateInformationShared set citystatezip = null where id = 6209;
update bnpid_old.CandidateInformationShared set parishchurch = null where id = 6209;

update bnpid_old.CandidateInformationShared set homephone = '03-9873-8184' where id = 213;
update bnpid_old.CandidateInformationShared set citystatezip = null where id = 213;

update bnpid_old.CandidateInformationShared set homephone = '+44-785-215-2002' where id = 203;
update bnpid_old.CandidateInformationShared set citystatezip = null where id = 203;

-- (5) Education Level
update bnpid_old.CandidateInformationShared set education = 'High school graduate' where education = 'HIGH SCHOOL' and id > 0;
update bnpid_old.CandidateInformationShared set education = 'High school graduate' where education = 'High School Graduate' and id > 0;
update bnpid_old.CandidateInformationShared set education = 'High school graduate' where education = '12TH GRADE' and id > 0;
update bnpid_old.CandidateInformationShared set education = 'Bachelor''s degree' where education = 'COLLEGE LEVEL' and id > 0;
update bnpid_old.CandidateInformationShared set education = 'Bachelor''s degree' where education = 'COLLEGE STUDENT' and id > 0;
update bnpid_old.CandidateInformationShared set education = 'Bachelor''s degree' where education = 'College' and id > 0;
update bnpid_old.CandidateInformationShared set education = 'Bachelor''s degree' where education = 'College - NURSING' and id > 0;
update bnpid_old.CandidateInformationShared set education = 'Bachelor''s degree' where education = 'BA' and id > 0;
update bnpid_old.CandidateInformationShared set education = 'Bachelor''s degree' where education = 'College Graduate' and id > 0;
update bnpid_old.CandidateInformationShared set education = 'Bachelor''s degree' where education = 'Accounting' and id > 0;
update bnpid_old.CandidateInformationShared set education = 'Some college' where education = 'Some College' and id > 0;
update bnpid_old.CandidateInformationShared set education = 'Two years college' where education = '2 years' and id > 0;
update bnpid_old.CandidateInformationShared set education = 'Master''s degree' where education = 'RETIRED PRIEST' and id > 0;
update bnpid_old.CandidateInformationShared set education = 'Associate degree' where education = 'College Undergraduate' and id > 0;


-- II. Transfer member information

INSERT INTO bnpid.members
	(
		barcode_id, last_name, first_name, middle_name, address, city, state, zip, country_id,
		home_phone, work_phone, cellular, email, date_of_birth, marital_status,
		gender, religion, degree, illness, dietary_requirements,
		dietary_requirements_desc, is_active
	)
	SELECT
		barcodeid, `last name`, `first name`, '', Address, City, State, zipcode, 226,
		homephone, workphone, cellular, email, STR_TO_DATE(dateofbirth, '%m/%d/%Y'), maritalstatus,
		sex, religion, degree, CONCAT_WS(' ', whatisyourillness, whatareyourphysicallimitations), specialdietaryrequirements,
		specialdietaryrequirementdesc, true
	FROM bnpid_old.CandidateInformationShared
	ORDER BY id;

-- (3) Update bnpid to determine country
select distinct address, city, state, zip from bnpid.members order by state;
select * from bnpid.country;

update bnpid.members set address = '1 BRADCO AVE', city = 'Ooralea Mackay', state = 'Queensland', country_id = 13, zip = '4740' where address like '%1 BRADCO AVE%' and id > 0;
update bnpid.members set address = '102 Field St', city = 'West Mackay', state = 'Queensland', country_id = 13, zip = '4740' where address like '%102 FIELD STREET%' and id > 0;

update bnpid.members set country_id = 38 where state = 'ALBERTA' and id > 0;
update bnpid.members set country_id = 38 where state = 'ALBERTA, CA' and id > 0;
update bnpid.members set state = 'Ontario', country_id = 38 where state = 'ON, CANADA' and id > 0;
update bnpid.members set state = 'Ontario', country_id = 38 where state = 'ONT, CANDAD' and id > 0;
update bnpid.members set state = 'Ontario', country_id = 38 where state = 'ONTARIO, CANADA' and id > 0;
update bnpid.members set state = 'Ontario', country_id = 38, zip = 'L65 1R2' where state = 'ONTARIO, CANADA L651R2' and id > 0;
update bnpid.members set state = 'Toronto', country_id = 38, zip = 'MIX IX9' where state = 'TORONTO, CA MIXIX9' and id > 0;
update bnpid.members set state = null, country_id = 38 where state = 'CAN' and id > 0;
update bnpid.members set state = 'Tecumseh', country_id = 38, zip = 'N8N 3J3' where state = 'CANADA  N8N3J3' and id > 0;
update bnpid.members set state = 'Toronto', country_id = 38, zip = 'M5T 1Y9' where state = 'CANADA M5T1Y9' and id > 0;
update bnpid.members set state = 'Ontario', country_id = 38 where state = 'ONTARIO CANADA' and id > 0;
update bnpid.members set state = 'Ontario', country_id = 38 where state = 'ONTARIO,CA' and id > 0;
update bnpid.members set state = 'Ontario', country_id = 38 where state = 'ONTARIO,CANADA' and id > 0;
update bnpid.members set state = 'British Columbia', country_id = 38 where state = 'BC CANADA' and id > 0;
update bnpid.members set state = 'British Columbia', country_id = 38 where state = 'BC' and id > 0;
update bnpid.members set state = 'Lower Sackville', country_id = 38, zip = 'B4C 3H6' where state = 'B4C3H6' and id > 0;
update bnpid.members set address = '#3-12110 75A Ave', city = 'Surrey', state = 'British Columbia', country_id = 38, zip = 'V3W 1M1' where address like '%#3-12110 75A AVE%' and id > 0;
update bnpid.members set address = '1035 Riverside Dr E', city = 'Windsor', state = 'Ontario', country_id = 38, zip = 'N9A 5L3' where address like '%1035 RIVERSIDE DRIVE EAST%' and id > 0;

update bnpid.members set address = '10 Rue Picot', city = 'Paris', state = null, country_id = 73 where address like '%10 RUE PILOT%' and id > 0;

update bnpid.members set address = '10 Hougang St 92, #03-04', city = 'Singapore', state = null, country_id = 192 where address like '%10 HOUGANG ST 92#03-04%' and id > 0;

update bnpid.members set state = 'England', country_id = 225 where state = 'ENGLAND' and id > 0;

update bnpid.members set country_id = 160 where state = 'LONDON UK' and id > 0;


update bnpid.members set state = 'Dubai', country_id = 224 where state = 'DUBAI' and id > 0;
update bnpid.members set state = 'Dubai', country_id = 224 where state = 'Dubai, UAE' and id > 0;

update bnpid.members set address = '0503-B Astorga St. Grace Park', city = 'Caloocan', state = 'Metro Manila', country_id = 169, zip = '1403' where address like '%0503-B ASTORGA ST. GRACE PARK%' and id > 0;

--------------------------------------------------------------------------------------------------------------------------------
-- Parish ----------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------

INSERT INTO bnpid.parish
	(
		`name`, address
	)
    SELECT
		distinct parishchurch, CONCAT_WS(', ', parishaddress, citystatezip)
    FROM bnpid_old.CandidateInformationShared
    WHERE parishchurch IS NOT NULL;

WITH merged_parish (member_id, parish_id) AS
	(SELECT m.id, p.id FROM bnpid.parish p JOIN bnpid_old.CandidateInformationShared cis ON p.name = cis.parishchurch INNER JOIN bnpid.members m ON cis.barcodeid = m.barcode_id)
UPDATE bnpid.members m, merged_parish mp SET m.parish_id = mp.parish_id WHERE m.id = mp.member_id;

