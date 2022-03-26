-- (1) Migrate data now, check later.
insert into class_info (classno, location, begindate, enddate, classtype, classgroup, notes)
    (select COALESCE(classnumber, '0'),
            concat(classplace, ' | ', `city/state/country`),
            concat(COALESCE(classyear, 1900), '-01-01 00:00:00'),
            concat(COALESCE(classyear, 1900), '-01-01 00:00:00'),
            COALESCE((SELECT id FROM bnpid.class_type WHERE `name` = old.classtype), 1),
            COALESCE((SELECT id FROM bnpid.class_group WHERE `name` = old.classgroup), 6),
            CONCAT('Old DB Data\nclassnumber: ', old.classnumber, '\n',
                   'classplace: ', old.classplace, '\n',
                   'city/state/country: ', old.`city/state/country`, '\n',
                   'classyear: ', old.classyear, '\n',
                   'classtype: ', old.classtype, '\n',
                   'classgroup: ', old.classgroup)
     from bnpid_old.CandidateInformationShared old
     order by id);