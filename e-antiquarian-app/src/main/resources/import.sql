INSERT INTO collection_country (id, version, uuid, iso_code, default_name, country_type, user_email) VALUES (1, 1, '376595f0-0e87-40ae-b3b5-0c882403ac23', 'DE', 'Німеччина', 'NUMISMATICS_COUNTRY', 'oleksandr.fedoras@gmail.com');
INSERT INTO collection_country (id, version, uuid, iso_code, default_name, country_type, user_email) VALUES (2, 1, 'f62445c8-a717-4909-9c13-ad72fbc7f09e', 'UA', 'Україна', 'NUMISMATICS_COUNTRY', 'oleksandr.fedoras@gmail.com');
INSERT INTO collection_country (id, version, uuid, iso_code, default_name, country_type, user_email) VALUES (3, 1, 'b9210c28-5976-481f-ab26-3a2acc6613a1', 'GB', 'Великобританія', 'NUMISMATICS_COUNTRY', 'oleksandr.fedoras@gmail.com');
INSERT INTO collection_country (id, version, uuid, iso_code, default_name, country_type, user_email) VALUES (4, 1, '10bd8822-353a-4cf6-bfa4-d82affb97e76', 'US', 'Сполучені Штати Америки', 'NUMISMATICS_COUNTRY', 'oleksandr.fedoras@gmail.com');

INSERT INTO country_materials (item_id, composition, material) VALUES (2, 'german-silver', 'Мельхіор');
INSERT INTO country_materials (item_id, composition, material) VALUES (2, 'silver925', 'Срібло 925');

INSERT INTO country_materials (item_id, composition, material) VALUES (3, 'silver925', 'Срібло 925');

INSERT INTO country_materials (item_id, composition, material) VALUES (4, 'silver400', 'Срібло 400');
INSERT INTO country_materials (item_id, composition, material) VALUES (4, 'silver900', 'Срібло 900');
INSERT INTO country_materials (item_id, composition, material) VALUES (4, 'copper', 'Мідь');
INSERT INTO country_materials (item_id, composition, material) VALUES (4, 'zinc', 'Цинк');

INSERT INTO monetary_period (id, version, uuid, country_id, start_year, end_year, currency) VALUES (1, 1, '7e9e28cd-e9ec-4162-a8df-00c40a0c1720', 2, 1995, 1996, 'UAK');
INSERT INTO monetary_period (id, version, uuid, country_id, start_year, currency) VALUES (2, 1, '428b6b1f-6aa6-44c8-ad2d-ea5fe964fec2', 2, 1996, 'UAH');

INSERT INTO monetary_period (id, version, uuid, country_id, start_year, currency) VALUES (3, 1, '17b33bd0-ed3e-4bf2-8472-357bdb9efe30', 4, 1900, 'USD');

INSERT INTO monetary_period (id, version, uuid, country_id, start_year, end_year, period_group, currency) VALUES (4, 1, 'dc6aba7b-dc24-44ee-8a23-a11e14174b95', 3, 1937, 1952, 'Король Георг VI', 'GBP');
INSERT INTO monetary_period (id, version, uuid, country_id, start_year, end_year, period_group, currency) VALUES (5, 1, 'b9210c28-5976-481f-ab26-3a2acc6613a1', 3, 1953, 1967, 'Королева Єлизавета II', 'GBP');
INSERT INTO monetary_period (id, version, uuid, country_id, start_year, period_group, currency) VALUES (6, 1, '1f9a9f33-d218-4a77-896e-5f668841b270', 3, 1967, 'Королева Єлизавета II', '');

INSERT INTO period_materials (item_id, composition, material) VALUES (2, 'nickel-silver', 'Нейзильбер');

INSERT INTO period_denominations (item_id, denotation, denomination, rate) VALUES (1, 'denomination_200000_uak', '200000 карбованців', 200000);
INSERT INTO period_denominations (item_id, denotation, denomination, rate) VALUES (1, 'denomination_1000000_uak', '1000000 карбованців', 1000000);
INSERT INTO period_denominations (item_id, denotation, denomination, rate) VALUES (1, 'denomination_2000000_uak', '2000000 карбованців', 2000000);

INSERT INTO period_denominations (item_id, denotation, denomination, rate) VALUES (2, 'denomination_2_uah', '2 гривні', 2);
INSERT INTO period_denominations (item_id, denotation, denomination, rate) VALUES (2, 'denomination_5_uah', '5 гривень', 5);

INSERT INTO period_denominations (item_id, denotation, denomination, rate) VALUES (3, 'denomination_0_01_usd', '1 цент', 0.01);
INSERT INTO period_denominations (item_id, denotation, denomination, rate) VALUES (3, 'denomination_0_05_usd', '5 центів', 0.05);
INSERT INTO period_denominations (item_id, denotation, denomination, rate) VALUES (3, 'denomination_0_10_usd', '10 центів', 0.10);
INSERT INTO period_denominations (item_id, denotation, denomination, rate) VALUES (3, 'denomination_0_25_usd', '25 центів', 0.25);
INSERT INTO period_denominations (item_id, denotation, denomination, rate) VALUES (3, 'denomination_0_50_usd', '50 центів', 0.50);
INSERT INTO period_denominations (item_id, denotation, denomination, rate) VALUES (3, 'denomination_1_usd', '1 долар', 1);