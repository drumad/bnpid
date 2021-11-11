CREATE TABLE IF NOT EXISTS `education_level`
(
    `id`          INT         NOT NULL,
    `name`        VARCHAR(50) NOT NULL,
    `description` VARCHAR(512),
    PRIMARY KEY (id)
);

-- Data taken from https://dw.opm.gov/datastandards/referenceData/1435/current?index=E
INSERT INTO `education_level`
VALUES (1, 'No formal education',
        'No formal education or some elementary school--did not complete. Elementary school means grades 1 through 8, or equivalent, not completed.'),
       (2, 'Elementary school completed', 'No high school. Grade 8 or equivalent completed.'),
       (3, 'Some high school', 'High school means grades 9 through 12, or equivalent. Have not graduated.'),
       (4, 'High school graduate', 'High school graduate or certificate of equivalency.'),
       (5, 'Terminal occupational program - DNC',
        'Program extending beyond grade 12, usually no more than three years; designed to prepare students for immediate employment in an occupation or cluster of occupations; not designed as the equivalent of the first two or three years of a baccalaureate degree program. Includes cooperative training or apprenticeship consisting of formal classroom instruction coupled with on-the-job training.'),
       (6, 'Terminal occupational program - Completed',
        'Diploma or equivalent. Two levels are recognized: (1) The technical and/or semi-professional level preparing technicians or semiprofessional personnel in engineering and nonengineering fields; and (2) the craftsman/clerical level training artisans, skilled operators, and clerical workers.'),
       (7, 'Some college', 'Less than one year or less than 30 semester hours completed.'),
       (8, 'One year college', '30-59 semester hours or 45-89 quarter hours completed.'),
       (9, 'Two years college', '60-89 semester hours or 90-134 quarter hours completed.'),
       (10, 'Associate Degree', '2-year college degree program completed.'),
       (11, 'Three years college', '90-119 semester hours or 135-179 quarter hours completed.'),
       (12, 'Four years college', '120 or more semester hours or 180 or more quarter hours completed--no baccalaureate (Bachelor\'s) degree.'),
       (13, 'Bachelor\'s degree',
        'Requires completion of at least four, but no more than five, years of academic work; includes Bachelor\'s degree conferred in a cooperative plan or program that provides for alternate class attendance and employment in business, industry, or government to allow student to combine actual work experience with college studies.'),
       (14, 'Post-Bachelor\'s', 'Some work beyond (at a higher level than) the Bachelor\'s degree but no additional higher degree.'),
       (15, 'First professional',
        'Signifies the completion of academic requirements for selected professions that are based on programs requiring at least two academic years of previous college work for entrance and a total of at least six academic years of college work for completion, e.g., Dentistry (D.D.S. or D.M.D.), Law (LL. B. or J.D.), Medicine (M.D.), Theology (B.D.), Veterinary Medicine (D.V.M.), Chiropody or Podiatry (D.S.C. or D.P.), Optometry (O.D.), and Osteopathy (D.O.).'),
       (16, 'Post-first professional', 'Some work beyond (at a higher level than) the first professional degree but no additional higher degree.'),
       (17, 'Master\'s degree',
        'For liberal arts and sciences customarily granted upon successful completion of one (sometimes two) academic years beyond the Bachelor\'s degree. In professional fields, an advanced degree beyond the first professional but below the Ph.D., e.g., the LL.M.; M.S. in surgery following the M.D.; M.S.D., Master of Science in Dentistry; M.S.W., Master of Social Work.'),
       (18, 'Post-Master\'s', 'Some work beyond (at a higher level than) the Master\'s degree but no additional higher degree.'),
       (19, 'Sixth-year degree',
        'Includes such degrees as Advanced Certificate in Education, Advanced Master of Education, Advanced Graduate Certificate, Advanced Specialist in Education Certificate, Certificate of Advanced Graduate Study, Certificate of Advanced Study, Advanced Degree in Education, Specialist in Education, Licentiate in Philosophy, Specialist in Guidance and Counseling, Specialist in Art, Specialist in Science, Specialist in School Administration, Specialist in School Psychology, Licentiate in Sacred Theology.'),
       (20, 'Post-sixth year', 'Some work beyond (at a higher level than) the sixth-year degree but no additional higher degree.'),
       (21, 'Doctorate degree',
        'Includes such degrees as Doctor of Education, Doctor of Juridical Science, Doctor of Public Health, and the Ph.D. (or equivalent) in any field. Does not include a Doctor\'s degree that is a first professional degree, per code 15.'),
       (22, 'Post-Doctorate', 'Work beyond the Doctorate.');