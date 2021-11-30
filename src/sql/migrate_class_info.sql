-- (1) Class group
select distinct classnumber, classyear from bnpid_old.CandidateInformationShared order by classnumber;
select distinct classnumber, classplace, classrector, classyear, classtype, classgroup from bnpid_old.CandidateInformationShared
where -- classgroup = 'APOSTOLIC MISSION' and
      -- classrector = 'ramon bru'
      classnumber = 1
order by classyear;

select * from bnpid_old.CandidateInformationShared where `classrector` = 'ALLAN MANEZE' and classnumber = 1;

update bnpid_old.CandidateInformationShared set classgroup = 'Young Men' where classtype = 'YOUNG MEN' and id > 0;
update bnpid_old.CandidateInformationShared set classgroup = 'Young Women' where classtype = 'YOUNG WOMEN' and id > 0;
update bnpid_old.CandidateInformationShared set classgroup = 'Senior Men' where classtype = 'SENIOR MEN' and id > 0;
update bnpid_old.CandidateInformationShared set classgroup = 'Senior Women' where classtype = 'SENIOR WOMEN' and id > 0;
update bnpid_old.CandidateInformationShared set classgroup = 'Junior Girls' where classtype = 'JR GIRLS' and id > 0;
update bnpid_old.CandidateInformationShared set classgroup = 'Junior Girls' where classtype = 'JUNIOR GIRLS' and id > 0;

-- (2) Unique class information
update bnpid_old.CandidateInformationShared set classrector = 'Lety Garcia', classplace = 'Northfield, OH', classgroup = 'Senior Women', classtype = 'Apostolic Mission Class' where classnumber = 39 and classyear = 1986 and id > 0;
update bnpid_old.CandidateInformationShared set classrector = 'Jayne Brandenburg', classplace = 'San Diego, CA', classgroup = 'Young Women', classtype = 'Panawagan' where classnumber = 39 and classyear = 1993 and id > 0;
update bnpid_old.CandidateInformationShared set classrector = 'Myrna Sembrano', classplace = 'San Diego, CA', classgroup = 'Senior Women', classtype = 'Panawagan' where classnumber = 39 and classyear = 1998 and id > 0;
update bnpid_old.CandidateInformationShared set classrector = 'Ramon Dizon', classplace = 'San Diego, CA', classgroup = 'Senior Men', classtype = 'Panawagan' where classnumber = 39 and classyear = 1999 and id > 0;
update bnpid_old.CandidateInformationShared set classrector = 'Evelyn Gabriel', classplace = 'Ontario, CA', classgroup = 'Senior Women', classtype = 'Panawagan' where classnumber = 39 and classyear = 2002 and id > 0;
update bnpid_old.CandidateInformationShared set classrector = 'Arnold Manalaysay', classplace = 'Ontario, CA', classgroup = 'Senior Men', classtype = 'Panawagan' where classnumber = 39 and classyear = 2017 and id > 0;

update bnpid_old.CandidateInformationShared set classnumber = 1, classrector = 'Harry Omana', classplace = 'London, UK', classgroup = 'Young Men', classtype = 'Panawagan' where classnumber = ' 1' and classyear = 1996 and classrector = 'HARRY OMANA' and id > 0;
update bnpid_old.CandidateInformationShared set classrector = 'Harry Omana', classplace = 'London, UK', classgroup = 'Young Men', classtype = 'Panawagan' where classnumber = 1 and classyear = 1996 and classrector = 'HARRY OMANA' and id > 0;

update bnpid_old.CandidateInformationShared set classrector = 'Bernadine Miranda', classplace = 'Talipapa', `city/state/country`='Novaliches, Quezon City, Philippines', classgroup = 'Young Women', classtype = 'Spiritual Workshop' where classnumber = 1 and classyear = 1995 and classrector = 'BERNADINE MIRANDA' and id > 0;

update bnpid_old.CandidateInformationShared set classrector = 'Jose Elizondo', classplace = 'Mt. Schoenstatt, Sydney, Australia', classgroup = 'Senior Men' where classnumber = 1 and classyear = 1988 and classrector = 'JOSE ELIZONDA' and id > 0;
update bnpid_old.CandidateInformationShared set classrector = 'Jose Elizondo', classplace = 'Mt. Schoenstatt, Sydney, Australia', classgroup = 'Senior Men' where classnumber = 1 and classyear = 1988 and classrector = 'BRO JOE ELIZONDO' and id > 0;
update bnpid_old.CandidateInformationShared set classrector = 'Jose Elizondo', classplace = 'Mt. Schoenstatt, Sydney, Australia', classgroup = 'Senior Men' where classnumber = 1 and classyear = 1988 and classrector = 'BRO JOSE ELIZONDO' and id > 0;
update bnpid_old.CandidateInformationShared set classrector = 'Mags Banzuela', classplace = 'Columbus, OH', classgroup = 'Senior Men', classtype = 'Apostolic', classnumber = 70 where classnumber = 1 and classyear = 1989 and classrector = 'MAGS BANZUELA' and id > 0;
update bnpid_old.CandidateInformationShared set classrector = 'Mags Banzuela', classplace = 'Columbus, OH', classgroup = 'Senior Men', classtype = 'Apostolic' where classnumber = 70 and classyear = 1989 and classrector = 'MAGS BANZUELA' and id > 0;
update bnpid_old.CandidateInformationShared set classrector = 'Celso Carandang', classplace = 'Columbus, OH', classgroup = 'Senior Men', classtype = 'Panawagan' where classnumber = 1 and classyear = 1992 and classrector = 'KUYA CELSO CARANDANG' and id > 0;
update bnpid_old.CandidateInformationShared set classrector = 'Ramon Bru', classplace = 'Sydney, Australia', classgroup = 'Seniors (Mixed)', classtype = 'Panawagan' where classnumber = 1 and classyear = 1994 and classrector = 'RAMON BRU' and id > 0;
update bnpid_old.CandidateInformationShared set classrector = 'Ramon Bru', classplace = 'Sydney, Australia', classgroup = 'Seniors (Mixed)', classtype = 'Panawagan' where classnumber = 1 and classyear = 1994 and classrector = 'RAMON BRU' and id > 0;
update bnpid_old.CandidateInformationShared set classrector = 'Allan Maneze', classplace = 'Sydney, Australia', classgroup = 'Young Men', classtype = 'Panawagan' where classnumber = 1 and classyear = 1995 and classrector = 'BRO. ALLAN MANEZE' and id > 0;
update bnpid_old.CandidateInformationShared set classrector = 'Allan Maneze', classplace = 'Sydney, Australia', classgroup = 'Young Men', classtype = 'Panawagan' where classnumber = 1 and classyear = 1995 and classrector = 'BRO. ALLAN  MANEZE' and id > 0;

update bnpid_old.CandidateInformationShared set classrector = 'Ate Salve', classplace = 'Davao City, Philippines', classgroup = 'Senior Men', classtype = 'Regular Class' where classnumber = 1 and classyear = 1983 and id > 0;
update bnpid_old.CandidateInformationShared set classrector = 'Myrla Moyco', classplace = 'Talipapa, Philippines', classgroup = 'Senior Women', classtype = 'Panawagan' where classnumber = 1 and classyear = 1983 and classplace = 'TALIPAPA' and id > 0;
update bnpid_old.CandidateInformationShared set classrector = 'Diana Villarta', classplace = 'Ontario, CA', classgroup = 'Senior Women', classtype = 'Panawagan' where classnumber = 1 and classyear = 1988 and classrector = 'DIANA VILLARTA' and id > 0;
update bnpid_old.CandidateInformationShared set classrector = 'Diana Villarta', classplace = 'Ontario, CA', classgroup = 'Senior Women', classtype = 'Panawagan' where classnumber = 1 and classyear = 1988 and classrector = 'DIANE VILLARTA' and id > 0;
update bnpid_old.CandidateInformationShared set classrector = 'Diana Villarta', classplace = 'Ontario, CA', classgroup = 'Senior Women', classtype = 'Panawagan' where classnumber = 1 and classyear = 1988 and classrector = 'SIS. DIANE VALLARTA' and id > 0;
update bnpid_old.CandidateInformationShared set classrector = 'Diana Villarta', classplace = 'Ontario, CA', classgroup = 'Senior Women' where classnumber = 1 and classyear = 1991 and classrector = 'SIS. DIANE VALLARTA' and id > 0;
update bnpid_old.CandidateInformationShared set classrector = 'Corazon Franks', classplace = 'MI', classgroup = 'Senior Women', classtype = 'Panawagan' where classnumber = 1 and classyear = 1992 and classrector = 'SIS. CORAZON FRANKS' and id > 0;
update bnpid_old.CandidateInformationShared set classrector = 'Ivie Hawak', classplace = '', classgroup = 'Senior Women', classtype = 'Panawagan' where classnumber = 1 and classyear = 1992 and classrector = 'SIS. IVIE HAWAK' and id > 0; -- CHECK WHERE
update bnpid_old.CandidateInformationShared set classrector = 'Christine Ramos', classplace = 'Upland, CA', classgroup = 'Senior Women', classtype = 'Panawagan' where classnumber = 1 and classyear = 1994 and classrector = 'CHRISTINE RAMOS' and id > 0; -- CHECK WHERE
update bnpid_old.CandidateInformationShared set classrector = 'Christine Ramos', classplace = 'Upland, CA', classgroup = 'Senior Women', classtype = 'Panawagan', classnumber = 1 where classnumber = '01' and classyear = 1994 and classrector = 'SIS. CHRISTINE RAMOS' and id > 0; -- CHECK WHERE
update bnpid_old.CandidateInformationShared set classrector = 'Sandra David', classplace = 'Rome', classgroup = 'Senior Women', classtype = 'Panawagan' where classnumber = 1 and classyear = 1994 and classrector = 'SIS SANDRA DAVID' and id > 0; -- CHECK WHERE
update bnpid_old.CandidateInformationShared set classrector = 'Sandra David', classplace = 'Rome', classgroup = 'Senior Women', classtype = 'Panawagan' where classnumber = 1 and classyear = 1994 and classrector = 'KUYA JULI AMADO' and id > 0;
update bnpid_old.CandidateInformationShared set classrector = 'Rex Madriaga', classplace = 'Santa Ana, CA', classgroup = 'Senior Women', classtype = 'Panawagan' where classnumber = 1 and classyear = 1995 and classrector = 'KUYA REX MADRIAGA' and id > 0;
update bnpid_old.CandidateInformationShared set classrector = 'Ate Salve', classplace = 'House of Prayer', `city/state/country`='Ontario, CA, USA', classgroup = 'Senior Women', classtype = 'Panawagan' where classnumber = 1 and classyear = 1998 and classrector = 'ATE SALVE' and id > 0;